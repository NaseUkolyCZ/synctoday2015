﻿using System;
using System.Activities;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace sync.today.activities.ServiceAccounts
{
    public sealed class GetServiceAccountByAdapterAndConsumer : CodeActivity
    {
        private static readonly log4net.ILog log = log4net.LogManager.GetLogger
    (System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        public InArgument<Models.AdapterDTO> Adapter { get; set; }
        public InArgument<Models.ConsumerDTO> Consumer { get; set; }
        public InArgument<Models.ServiceDTO> Service { get; set; }
        public OutArgument<Models.ServiceAccountDTO> ServiceAccount { get; set; }
        protected override void Execute(CodeActivityContext context)
        {
            log.Debug("Entered");
            try
            {
                var adapter = Adapter.Get(context);
                var consumer = Consumer.Get(context);
                var service = Service.Get(context);
                log.Debug(String.Format("adapter: {2}/'{0}', consumer:{3}/'{1}', service:'{4}'", adapter, consumer, adapter == null ? string.Empty : adapter.Id.ToString(), consumer == null ? string.Empty : consumer.Id.ToString(), service));
                var serviceAccount = ServiceAccountRepository.ServiceAccountBAdapterAndConsumer(adapter, consumer, service);
                try
                {
                    ServiceAccount.Set(context, serviceAccount.Value);
                }
                catch (NullReferenceException)
                {
                    ServiceAccount.Set(context, null);
                }
            }
            catch (Exception ex)
            {
                log.Fatal("failed", ex);
                throw;
            }
        }

    }
}
