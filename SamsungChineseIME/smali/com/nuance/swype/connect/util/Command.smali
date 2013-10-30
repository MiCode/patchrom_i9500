.class public Lcom/nuance/swype/connect/util/Command;
.super Ljava/lang/Object;
.source "Command.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DELETE:Ljava/lang/String; = "DELETE"

.field public static final GET:Ljava/lang/String; = "GET"

.field public static final POST:Ljava/lang/String; = "POST"

.field public static final PUT:Ljava/lang/String; = "PUT"


# instance fields
.field public allowDuplicateOfCommand:Z

.field public callbackManager:Lcom/nuance/swype/connect/manager/AbstractCommandManager;

.field public volatile canceled:Z

.field public command:Ljava/lang/String;

.field public commandFamily:Ljava/lang/String;

.field public delayUntil:J

.field public delayedFor:I

.field public deviceId:Ljava/lang/String;

.field public fileLocation:Ljava/lang/String;

.field public fileResumeLocation:Ljava/lang/String;

.field public handleIOException:Z

.field public hasBody:Z

.field public identifier:Ljava/lang/String;

.field public method:Ljava/lang/String;

.field public needDevice:Z

.field public notifyDownloadStatus:Z

.field public parameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public realTimeEnabled:Z

.field public realTimeSubTopic:Ljava/lang/String;

.field public realTimeTopic:Ljava/lang/String;

.field public requireDevice:Z

.field public requireSession:Z

.field public retryCount:I

.field public sendEmpty:Z

.field public sent:Z

.field public thirdPartyURL:Ljava/lang/String;

.field public timeSent:J

.field public transactionId:Ljava/lang/String;

.field public version:I

.field public wifiOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v1, p0, Lcom/nuance/swype/connect/util/Command;->requireDevice:Z

    .line 40
    iput-boolean v2, p0, Lcom/nuance/swype/connect/util/Command;->needDevice:Z

    .line 45
    iput-boolean v2, p0, Lcom/nuance/swype/connect/util/Command;->requireSession:Z

    .line 50
    iput-boolean v1, p0, Lcom/nuance/swype/connect/util/Command;->sendEmpty:Z

    .line 100
    const-string v0, "POST"

    iput-object v0, p0, Lcom/nuance/swype/connect/util/Command;->method:Ljava/lang/String;

    .line 105
    iput-boolean v2, p0, Lcom/nuance/swype/connect/util/Command;->hasBody:Z

    .line 111
    iput-boolean v2, p0, Lcom/nuance/swype/connect/util/Command;->handleIOException:Z

    .line 121
    iput-boolean v2, p0, Lcom/nuance/swype/connect/util/Command;->allowDuplicateOfCommand:Z

    .line 126
    iput-boolean v1, p0, Lcom/nuance/swype/connect/util/Command;->notifyDownloadStatus:Z

    .line 131
    const/4 v0, 0x3

    iput v0, p0, Lcom/nuance/swype/connect/util/Command;->retryCount:I

    .line 141
    iput-boolean v1, p0, Lcom/nuance/swype/connect/util/Command;->realTimeEnabled:Z

    .line 149
    iput-boolean v1, p0, Lcom/nuance/swype/connect/util/Command;->sent:Z

    .line 154
    iput-boolean v1, p0, Lcom/nuance/swype/connect/util/Command;->wifiOnly:Z

    .line 160
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/swype/connect/util/Command;->timeSent:J

    return-void
.end method


# virtual methods
.method public clone()Lcom/nuance/swype/connect/util/Command;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/util/Command;

    .line 236
    .local v0, copy:Lcom/nuance/swype/connect/util/Command;
    iget-object v1, p0, Lcom/nuance/swype/connect/util/Command;->commandFamily:Ljava/lang/String;

    iput-object v1, v0, Lcom/nuance/swype/connect/util/Command;->commandFamily:Ljava/lang/String;

    .line 237
    iget v1, p0, Lcom/nuance/swype/connect/util/Command;->version:I

    iput v1, v0, Lcom/nuance/swype/connect/util/Command;->version:I

    .line 238
    iget-object v1, p0, Lcom/nuance/swype/connect/util/Command;->command:Ljava/lang/String;

    iput-object v1, v0, Lcom/nuance/swype/connect/util/Command;->command:Ljava/lang/String;

    .line 239
    iget-boolean v1, p0, Lcom/nuance/swype/connect/util/Command;->requireDevice:Z

    iput-boolean v1, v0, Lcom/nuance/swype/connect/util/Command;->requireDevice:Z

    .line 240
    iget-boolean v1, p0, Lcom/nuance/swype/connect/util/Command;->needDevice:Z

    iput-boolean v1, v0, Lcom/nuance/swype/connect/util/Command;->needDevice:Z

    .line 241
    iget-boolean v1, p0, Lcom/nuance/swype/connect/util/Command;->requireSession:Z

    iput-boolean v1, v0, Lcom/nuance/swype/connect/util/Command;->requireSession:Z

    .line 242
    iget v1, p0, Lcom/nuance/swype/connect/util/Command;->delayedFor:I

    iput v1, v0, Lcom/nuance/swype/connect/util/Command;->delayedFor:I

    .line 243
    iget-wide v1, p0, Lcom/nuance/swype/connect/util/Command;->delayUntil:J

    iput-wide v1, v0, Lcom/nuance/swype/connect/util/Command;->delayUntil:J

    .line 244
    iget-object v1, p0, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    iput-object v1, v0, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    .line 245
    iget-object v1, p0, Lcom/nuance/swype/connect/util/Command;->fileLocation:Ljava/lang/String;

    iput-object v1, v0, Lcom/nuance/swype/connect/util/Command;->fileLocation:Ljava/lang/String;

    .line 246
    iget-object v1, p0, Lcom/nuance/swype/connect/util/Command;->transactionId:Ljava/lang/String;

    iput-object v1, v0, Lcom/nuance/swype/connect/util/Command;->transactionId:Ljava/lang/String;

    .line 247
    iget-object v1, p0, Lcom/nuance/swype/connect/util/Command;->deviceId:Ljava/lang/String;

    iput-object v1, v0, Lcom/nuance/swype/connect/util/Command;->deviceId:Ljava/lang/String;

    .line 248
    iget-object v1, p0, Lcom/nuance/swype/connect/util/Command;->thirdPartyURL:Ljava/lang/String;

    iput-object v1, v0, Lcom/nuance/swype/connect/util/Command;->thirdPartyURL:Ljava/lang/String;

    .line 249
    iget-object v1, p0, Lcom/nuance/swype/connect/util/Command;->method:Ljava/lang/String;

    iput-object v1, v0, Lcom/nuance/swype/connect/util/Command;->method:Ljava/lang/String;

    .line 250
    iget-boolean v1, p0, Lcom/nuance/swype/connect/util/Command;->hasBody:Z

    iput-boolean v1, v0, Lcom/nuance/swype/connect/util/Command;->hasBody:Z

    .line 251
    iget-boolean v1, p0, Lcom/nuance/swype/connect/util/Command;->handleIOException:Z

    iput-boolean v1, v0, Lcom/nuance/swype/connect/util/Command;->handleIOException:Z

    .line 252
    iget-object v1, p0, Lcom/nuance/swype/connect/util/Command;->callbackManager:Lcom/nuance/swype/connect/manager/AbstractCommandManager;

    iput-object v1, v0, Lcom/nuance/swype/connect/util/Command;->callbackManager:Lcom/nuance/swype/connect/manager/AbstractCommandManager;

    .line 253
    iget-boolean v1, p0, Lcom/nuance/swype/connect/util/Command;->allowDuplicateOfCommand:Z

    iput-boolean v1, v0, Lcom/nuance/swype/connect/util/Command;->allowDuplicateOfCommand:Z

    .line 254
    iget-boolean v1, p0, Lcom/nuance/swype/connect/util/Command;->notifyDownloadStatus:Z

    iput-boolean v1, v0, Lcom/nuance/swype/connect/util/Command;->notifyDownloadStatus:Z

    .line 255
    iget v1, p0, Lcom/nuance/swype/connect/util/Command;->retryCount:I

    iput v1, v0, Lcom/nuance/swype/connect/util/Command;->retryCount:I

    .line 256
    iget-object v1, p0, Lcom/nuance/swype/connect/util/Command;->identifier:Ljava/lang/String;

    iput-object v1, v0, Lcom/nuance/swype/connect/util/Command;->identifier:Ljava/lang/String;

    .line 257
    iget-boolean v1, p0, Lcom/nuance/swype/connect/util/Command;->realTimeEnabled:Z

    iput-boolean v1, v0, Lcom/nuance/swype/connect/util/Command;->realTimeEnabled:Z

    .line 258
    iget-object v1, p0, Lcom/nuance/swype/connect/util/Command;->realTimeTopic:Ljava/lang/String;

    iput-object v1, v0, Lcom/nuance/swype/connect/util/Command;->realTimeTopic:Ljava/lang/String;

    .line 259
    iget-object v1, p0, Lcom/nuance/swype/connect/util/Command;->realTimeSubTopic:Ljava/lang/String;

    iput-object v1, v0, Lcom/nuance/swype/connect/util/Command;->realTimeSubTopic:Ljava/lang/String;

    .line 260
    iget-boolean v1, p0, Lcom/nuance/swype/connect/util/Command;->sent:Z

    iput-boolean v1, v0, Lcom/nuance/swype/connect/util/Command;->sent:Z

    .line 261
    iget-wide v1, p0, Lcom/nuance/swype/connect/util/Command;->timeSent:J

    iput-wide v1, v0, Lcom/nuance/swype/connect/util/Command;->timeSent:J

    .line 262
    iget-object v1, p0, Lcom/nuance/swype/connect/util/Command;->fileResumeLocation:Ljava/lang/String;

    iput-object v1, v0, Lcom/nuance/swype/connect/util/Command;->fileResumeLocation:Ljava/lang/String;

    .line 264
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/nuance/swype/connect/util/Command;->clone()Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    return-object v0
.end method

.method public shortString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nuance/swype/connect/util/Command;->commandFamily:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nuance/swype/connect/util/Command;->version:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/connect/util/Command;->command:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 230
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .local v0, responseString:Ljava/lang/StringBuilder;
    const-string v1, "Command\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "commandFamily = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/connect/util/Command;->commandFamily:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nuance/swype/connect/util/Command;->version:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "command = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/connect/util/Command;->command:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "deviceId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/swype/connect/util/Command;->requireDevice:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sessionId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/swype/connect/util/Command;->requireSession:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "delayedFor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nuance/swype/connect/util/Command;->delayedFor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "fileLocation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/connect/util/Command;->fileLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "thirdPartyURL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/connect/util/Command;->thirdPartyURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "retryCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nuance/swype/connect/util/Command;->retryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "identifier = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/connect/util/Command;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "realTimeEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/swype/connect/util/Command;->realTimeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "realTimeTopic = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/connect/util/Command;->realTimeTopic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "realTimeSubTopic = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/connect/util/Command;->realTimeSubTopic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/swype/connect/util/Command;->sent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "canceled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/swype/connect/util/Command;->canceled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "wifiOnly = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/swype/connect/util/Command;->wifiOnly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
