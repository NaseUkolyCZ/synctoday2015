﻿module AppointmentsSQL

open Common
open System
open FSharp.Data
open Microsoft.FSharp.Data.TypeProviders
open sync.today.Models
open MainDataConnection

type private GetAppointmentsQuery = SqlCommandProvider<"GetAppointments.sql", ConnectionStringName>
type private GetAppointmentsModifiedThroughAdapterQuery = SqlCommandProvider<"GetAppointmentsModifiedThroughAdapter.sql", ConnectionStringName>
type private InsertOrUpdateAppointmentQuery = SqlCommandProvider<"InsertOrUpdateAppointment.sql", ConnectionStringName>
type private MarkAppointmentAsDeletedQuery = SqlCommandProvider<"MarkAppointmentAsDeleted.sql", ConnectionStringName>

let internal convert( r : GetAppointmentsQuery.Record ) : AppointmentDTO =
    try 
        { Id = r.Id; 
        InternalId = r.InternalId; 
        LastModified = r.LastModified; 
        Category = r.Category; 
        Location = r.Location; 
        Content = r.Content; 
        Title = r.Title; 
        DateFrom = r.DateFrom; 
        DateTo = r.DateTo; 
        ReminderMinutesBeforeStart = r.ReminderMinutesBeforeStart.Value; //0; 
        Notification = r.Notification; 
        IsPrivate = r.IsPrivate.Value; // false;
        Priority = r.Priority; //byte 0; 
        ConsumerId = r.ConsumerId 
        }
    with 
        | ex -> raise ( new ArgumentException( (sprintf "Unable to load %A" r.Id), ex) )

let internal convert2( r : GetAppointmentsModifiedThroughAdapterQuery.Record ) : AppointmentDTO =
    try     
        { Id = r.Id; InternalId = r.InternalId; LastModified = r.LastModified; Category = r.Category; Location = r.Location; Content = r.Content; Title = r.Title; DateFrom = r.DateFrom; 
        DateTo = r.DateTo; ReminderMinutesBeforeStart = r.ReminderMinutesBeforeStart.Value; Notification = r.Notification; IsPrivate = r.IsPrivate.Value; 
        Priority = r.Priority; ConsumerId = r.ConsumerId }
    with 
        | ex -> raise ( new ArgumentException( (sprintf "Unable to convert %A" r), ex) )

let internal convert3( r : InsertOrUpdateAppointmentQuery.Record ) : AppointmentDTO =
    { Id = r.Id; InternalId = r.InternalId; LastModified = r.LastModified; Category = r.Category; Location = r.Location; Content = r.Content; Title = r.Title; DateFrom = r.DateFrom; 
    DateTo = r.DateTo; ReminderMinutesBeforeStart = r.ReminderMinutesBeforeStart.Value; Notification = r.Notification; IsPrivate = r.IsPrivate.Value; 
    Priority = r.Priority; ConsumerId = r.ConsumerId }

let convertOp(c) = 
    convertOption( c, convert )

let convertOp3(c) = 
    convertOption( c, convert3 )

let internal appointments()  = 
    ( new GetAppointmentsQuery() ).AsyncExecute(0, Guid.Empty, 0, 0 ) |> Async.RunSynchronously |> Seq.map convert

let internal appointmentsByConsumer( consumerId ) =
    ( new GetAppointmentsQuery() ).AsyncExecute(consumerId, Guid.Empty, 0, 0 ) |> Async.RunSynchronously |> Seq.map convert

let internal appointmentsByInternalId( internalid : Guid ) =
    ( new GetAppointmentsQuery() ).AsyncExecute(0, internalid, 0, 0 ) |> Async.RunSynchronously |> Seq.tryHead |> convertOp

let appointment( Id : int ) : AppointmentDTO option =
    ( new GetAppointmentsQuery() ).AsyncExecute(0, Guid.Empty, Id, 0 ) |> Async.RunSynchronously |> Seq.tryHead |> convertOp
    
let saveAppointment( app : AppointmentDTO ) = 
    ( new InsertOrUpdateAppointmentQuery() ).AsyncExecute(
        app.InternalId, app.ConsumerId, app.LastModified, 
        optionString2String app.Category, 
        optionString2String app.Location, 
        optionString2String app.Content, 
        optionString2String app.Title, 
        app.DateFrom,
        app.DateTo, app.ReminderMinutesBeforeStart, app.Notification, app.IsPrivate, app.Priority
    ) |> Async.RunSynchronously |> Seq.tryHead |> convertOp3

let internal appointmentsModifiedThroughAdapter(forConsumer : ConsumerDTO, lastModified : DateTime) =
    ( new GetAppointmentsModifiedThroughAdapterQuery() ).AsyncExecute(forConsumer.Id, lastModified) |> Async.RunSynchronously |> Seq.map convert2

let internal getAppointmentByAdapterAppointmentId( adapterAppointmentId ) =
    ( new GetAppointmentsQuery() ).AsyncExecute(0, Guid.Empty, 0, adapterAppointmentId) |> Async.RunSynchronously |> Seq.tryHead |> convertOp
    
let markAppointmentAsDeletedInDB app =
    ( new MarkAppointmentAsDeletedQuery() ).AsyncExecute( (app: AppointmentDTO).InternalId) |> Async.RunSynchronously |> ignore
