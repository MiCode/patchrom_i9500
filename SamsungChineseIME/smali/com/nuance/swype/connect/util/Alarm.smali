.class public Lcom/nuance/swype/connect/util/Alarm;
.super Ljava/lang/Object;
.source "Alarm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/connect/util/Alarm$1;,
        Lcom/nuance/swype/connect/util/Alarm$Builder;
    }
.end annotation


# instance fields
.field private final alarmId:I

.field private final alarmType:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final extras:Landroid/os/Bundle;

.field private final flags:I

.field private final repeating:Z

.field private final requestingClassName:Ljava/lang/String;

.field private final triggerTime:J

.field private final wakeType:I


# direct methods
.method private constructor <init>(Lcom/nuance/swype/connect/util/Alarm$Builder;)V
    .locals 4
    .parameter "builder"

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/util/Alarm;->extras:Landroid/os/Bundle;

    .line 256
    #getter for: Lcom/nuance/swype/connect/util/Alarm$Builder;->context:Landroid/content/Context;
    invoke-static {p1}, Lcom/nuance/swype/connect/util/Alarm$Builder;->access$100(Lcom/nuance/swype/connect/util/Alarm$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/connect/util/Alarm;->context:Landroid/content/Context;

    .line 257
    #getter for: Lcom/nuance/swype/connect/util/Alarm$Builder;->requestingClassName:Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/swype/connect/util/Alarm$Builder;->access$200(Lcom/nuance/swype/connect/util/Alarm$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/connect/util/Alarm;->requestingClassName:Ljava/lang/String;

    .line 258
    #getter for: Lcom/nuance/swype/connect/util/Alarm$Builder;->alarmType:Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/swype/connect/util/Alarm$Builder;->access$300(Lcom/nuance/swype/connect/util/Alarm$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/connect/util/Alarm;->alarmType:Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lcom/nuance/swype/connect/util/Alarm;->requestingClassName:Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/swype/connect/util/Alarm;->alarmType:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/connect/util/Alarm;->generateAlarmId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/connect/util/Alarm;->alarmId:I

    .line 261
    #getter for: Lcom/nuance/swype/connect/util/Alarm$Builder;->actualTriggerTime:J
    invoke-static {p1}, Lcom/nuance/swype/connect/util/Alarm$Builder;->access$400(Lcom/nuance/swype/connect/util/Alarm$Builder;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 262
    #getter for: Lcom/nuance/swype/connect/util/Alarm$Builder;->relativeTriggerDays:I
    invoke-static {p1}, Lcom/nuance/swype/connect/util/Alarm$Builder;->access$500(Lcom/nuance/swype/connect/util/Alarm$Builder;)I

    move-result v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/TimeConversion;->convertDaysToMillis(I)J

    move-result-wide v0

    #getter for: Lcom/nuance/swype/connect/util/Alarm$Builder;->relativeTriggerHours:I
    invoke-static {p1}, Lcom/nuance/swype/connect/util/Alarm$Builder;->access$600(Lcom/nuance/swype/connect/util/Alarm$Builder;)I

    move-result v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/TimeConversion;->convertHoursToMillis(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    #getter for: Lcom/nuance/swype/connect/util/Alarm$Builder;->relativeTriggerMinutes:I
    invoke-static {p1}, Lcom/nuance/swype/connect/util/Alarm$Builder;->access$700(Lcom/nuance/swype/connect/util/Alarm$Builder;)I

    move-result v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/TimeConversion;->convertMinutesToMillis(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    #getter for: Lcom/nuance/swype/connect/util/Alarm$Builder;->relativeTriggerSeconds:I
    invoke-static {p1}, Lcom/nuance/swype/connect/util/Alarm$Builder;->access$800(Lcom/nuance/swype/connect/util/Alarm$Builder;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/nuance/swype/connect/util/TimeConversion;->convertSecondsToMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    #getter for: Lcom/nuance/swype/connect/util/Alarm$Builder;->relativeTriggerMillis:I
    invoke-static {p1}, Lcom/nuance/swype/connect/util/Alarm$Builder;->access$900(Lcom/nuance/swype/connect/util/Alarm$Builder;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/util/TimeConversion;->convertMillisToTimeStamp(J)J

    move-result-wide v0

    #setter for: Lcom/nuance/swype/connect/util/Alarm$Builder;->actualTriggerTime:J
    invoke-static {p1, v0, v1}, Lcom/nuance/swype/connect/util/Alarm$Builder;->access$402(Lcom/nuance/swype/connect/util/Alarm$Builder;J)J

    .line 268
    :cond_0
    #getter for: Lcom/nuance/swype/connect/util/Alarm$Builder;->actualTriggerTime:J
    invoke-static {p1}, Lcom/nuance/swype/connect/util/Alarm$Builder;->access$400(Lcom/nuance/swype/connect/util/Alarm$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/swype/connect/util/Alarm;->triggerTime:J

    .line 269
    #getter for: Lcom/nuance/swype/connect/util/Alarm$Builder;->extras:Landroid/os/Bundle;
    invoke-static {p1}, Lcom/nuance/swype/connect/util/Alarm$Builder;->access$1000(Lcom/nuance/swype/connect/util/Alarm$Builder;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/nuance/swype/connect/util/Alarm;->extras:Landroid/os/Bundle;

    #getter for: Lcom/nuance/swype/connect/util/Alarm$Builder;->extras:Landroid/os/Bundle;
    invoke-static {p1}, Lcom/nuance/swype/connect/util/Alarm$Builder;->access$1000(Lcom/nuance/swype/connect/util/Alarm$Builder;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 272
    :cond_1
    #getter for: Lcom/nuance/swype/connect/util/Alarm$Builder;->wakeDevice:Z
    invoke-static {p1}, Lcom/nuance/swype/connect/util/Alarm$Builder;->access$1100(Lcom/nuance/swype/connect/util/Alarm$Builder;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 273
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/connect/util/Alarm;->wakeType:I

    .line 277
    :goto_0
    #getter for: Lcom/nuance/swype/connect/util/Alarm$Builder;->flags:I
    invoke-static {p1}, Lcom/nuance/swype/connect/util/Alarm$Builder;->access$1200(Lcom/nuance/swype/connect/util/Alarm$Builder;)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/connect/util/Alarm;->flags:I

    .line 278
    #getter for: Lcom/nuance/swype/connect/util/Alarm$Builder;->repeating:Z
    invoke-static {p1}, Lcom/nuance/swype/connect/util/Alarm$Builder;->access$1300(Lcom/nuance/swype/connect/util/Alarm$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/connect/util/Alarm;->repeating:Z

    .line 279
    return-void

    .line 275
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/swype/connect/util/Alarm;->wakeType:I

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/connect/util/Alarm$Builder;Lcom/nuance/swype/connect/util/Alarm$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/util/Alarm;-><init>(Lcom/nuance/swype/connect/util/Alarm$Builder;)V

    return-void
.end method

.method private generateAlarmId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "requestingClassName"
    .parameter "alarmType"

    .prologue
    .line 337
    const/16 v4, 0x17

    .line 338
    .local v4, result:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 339
    .local v5, s:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .local v0, arr$:[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 340
    .local v1, b:B
    mul-int/lit8 v6, v4, 0x1f

    add-int v4, v6, v1

    .line 339
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 343
    .end local v1           #b:B
    :cond_0
    return v4
.end method

.method private generateIntent()Landroid/app/PendingIntent;
    .locals 5

    .prologue
    .line 321
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 322
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/nuance/swype/connect/util/Alarm;->context:Landroid/content/Context;

    const-class v3, Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 323
    const-string v2, "ALARM_CLASS"

    iget-object v3, p0, Lcom/nuance/swype/connect/util/Alarm;->requestingClassName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    const-string v2, "ALARM_TYPE"

    iget-object v3, p0, Lcom/nuance/swype/connect/util/Alarm;->alarmType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    iget-object v2, p0, Lcom/nuance/swype/connect/util/Alarm;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 326
    iget-object v2, p0, Lcom/nuance/swype/connect/util/Alarm;->context:Landroid/content/Context;

    iget v3, p0, Lcom/nuance/swype/connect/util/Alarm;->alarmId:I

    iget v4, p0, Lcom/nuance/swype/connect/util/Alarm;->flags:I

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 327
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    return-object v1
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/nuance/swype/connect/util/Alarm;->generateIntent()Landroid/app/PendingIntent;

    move-result-object v1

    .line 295
    .local v1, operation:Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/nuance/swype/connect/util/Alarm;->context:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 296
    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 297
    return-void
.end method

.method public set()V
    .locals 5

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/nuance/swype/connect/util/Alarm;->generateIntent()Landroid/app/PendingIntent;

    move-result-object v1

    .line 286
    .local v1, operation:Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/nuance/swype/connect/util/Alarm;->context:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 287
    .local v0, alarm:Landroid/app/AlarmManager;
    iget v2, p0, Lcom/nuance/swype/connect/util/Alarm;->wakeType:I

    iget-wide v3, p0, Lcom/nuance/swype/connect/util/Alarm;->triggerTime:J

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 288
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 310
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM/dd/yyyy hh:mm:ss:SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 311
    .local v1, format:Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Alarm ["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    .local v0, desc:Ljava/lang/StringBuilder;
    const-string v2, "alarmId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/nuance/swype/connect/util/Alarm;->alarmId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const-string v2, "launcher="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/connect/util/Alarm;->requestingClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const-string v2, "alarm type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/connect/util/Alarm;->alarmType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    const-string v2, "executes at="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/nuance/swype/connect/util/Alarm;->triggerTime:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
