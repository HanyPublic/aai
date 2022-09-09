using Aksaty.Domain.Attachments.Commands.Validations;
using Aksaty.Infra.CrossCutting.Util;
using NetDevPack.Messaging;
using System;
using System.Collections.Generic;
using System.Text;
namespace Aksaty.Domain.Attachments.Commands
{
    public class RemoveRestoreListAttachmentsCommand: BaseEntityCommand
    {
        public List<RemoveRestoreAttachmentCommand> RemoveRestoreAttachmentCommands;
        public bool Delete;
        public RemoveRestoreListAttachmentsCommand(List<RemoveRestoreAttachmentCommand> commands,bool delete)
        {
            RemoveRestoreAttachmentCommands = commands;
            Delete = delete;
        }
       

    }
}
