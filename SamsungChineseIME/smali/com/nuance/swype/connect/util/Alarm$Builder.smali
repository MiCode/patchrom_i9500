.class public Lcom/nuance/swype/connect/util/Alarm$Builder;
.super Ljava/lang/Object;
.source "Alarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/util/Alarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private actualTriggerTime:J

.field private final alarmType:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private extras:Landroid/os/Bundle;

.field private flags:I

.field private relativeTriggerDays:I

.field private relativeTriggerHours:I

.field private relativeTriggerMillis:I

.field private relativeTriggerMinutes:I

.field private relativeTriggerSeconds:I

.field private repeating:Z

.field private final requestingClassName:Ljava/lang/String;

.field private wakeDevice:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter
    .parameter "alarmType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, requestingClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/swype/connect/util/Alarm$Builder;->actualTriggerTime:J

    .line 57
    iput v2, p0, Lcom/nuance/swype/connect/util/Alarm$Builder;->relativeTriggerDays:I

    .line 58
    iput v2, p0, Lcom/nuance/swype/connect/util/Alarm$Builder;->relativeTriggerHours:I

    .line 59
    iput v2, p0, Lcom/nuance/swype/connect/util/Alarm$Builder;->relativeTriggerMinutes:I

    .line 60
    iput v2, p0, Lcom/nuance/swype/connect/util/Alarm$Builder;->relativeTriggerSeconds:I

    .line 61
    iput v2, p0, Lcom/nuance/swype/connect/util/Alarm$Builder;->relativeTriggerMillis:I

    .line 62
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/util/Alarm$Builder;->extras:Landroid/os/Bundle;

    .line 64
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/nuance/swype/connect/util/Alarm$Builder;->flags:I

    .line 65
    iput-boolean v2, p0, Lcom/nuance/swype/connect/util/Alarm$Builder;->repeating:Z

    .line 81
    iput-object p1, p0, Lcom/nuance/swype/connect/util/Alarm$Builder;->context:Landroid/content/Context;

    .line 82
    invoke-virtual {p2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/connect/util/Alarm$Builder;->requestingClassName:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/nuance/swype/connect/util/Alarm$Builder;->alarmType:Ljava/lang/String;

    .line 84
    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swype/connect/util/Alarm$Builder;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nuance/swype/connect/util/Alarm$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nuance/swype/connect/util/Alarm$Builder;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nuance/swype/connect/util/Alarm$Builder;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/nuance/swype/connect/util/Alarm$Builder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/nuance/swype/connect/util/Alarm$Builder;->wakeDevice:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/nuance/swype/connect/util/Alarm$Builder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/nuance/swype/connect/util/Alarm$Builder;->flags:I

    return v0
.end method

.method static synthetic access$1300(Lcom/nuance/swype/connect/util/Alarm$Builder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/nuance/swype/connect/util/Alarm$Builder;->repeating:Z

    return v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/connect/util/Alarm$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nuance/swype/connect/util/Alarm$Builder;->requestingClassName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/connect/util/Alarm$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nuance/swype/connect/util/Alarm$Builder;->alarmType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/swype/connect/util/Alarm$Builder;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/nuance/swype/connect/util/Alarm$Builder;->actualTriggerTime:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/nuance/swype/connect/util/Alarm$Builder;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/nuance/swype/connect/util/Alarm$Builder;->actualTriggerTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/nuance/swype/connect/util/Alarm$Builder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/nuance/swype/connect/util/Alarm$Builder;->relativeTriggerDays:I

    return v0
.end method

.method static synthetic access$600(Lcom/nuance/swype/connect/util/Alarm$Builder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/nuance/swype/connect/util/Alarm$Builder;->relativeTriggerHours:I

    return v0
.end method

.method static synthetic access$700(Lcom/nuance/swype/connect/util/Alarm$Builder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/nuance/swype/connect/util/Alarm$Builder;->relativeTriggerMinutes:I

    return v0
.end method

.method static synthetic access$800(Lcom/nuance/swype/connect/util/Alarm$Builder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/nuance/swype/connect/util/Alarm$Builder;->relativeTriggerSeconds:I

    return v0
.end method

.method static synthetic access$900(Lcom/nuance/swype/connect/util/Alarm$Builder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/nuance/swype/connect/util/Alarm$Builder;->relativeTriggerMillis:I

    return v0
.end method


# virtual methods
.method public build()Lcom/nuance/swype/connect/util/Alarm;
    .locals 2

    .prologue
    .line 251
    new-instance v0, Lcom/nuance/swype/connect/util/Alarm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/connect/util/Alarm;-><init>(Lcom/nuance/swype/connect/util/Alarm$Builder;Lcom/nuance/swype/connect/util/Alarm$1;)V

    return-object v0
.end method

.method public days(I)Lcom/nuance/swype/connect/util/Alarm$Builder;
    .locals 0
    .parameter "futureDays"

    .prologue
    .line 97
    iput p1, p0, Lcom/nuance/swype/connect/util/Alarm$Builder;->relativeTriggerDays:I

    .line 98
    return-object p0
.end method

.method public extras(Landroid/os/Bundle;)Lcom/nuance/swype/connect/util/Alarm$Builder;
    .locals 0
    .parameter "extras"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/nuance/swype/connect/util/Alarm$Builder;->extras:Landroid/os/Bundle;

    .line 201
    return-object p0
.end method

.method public extras(Ljava/util/Map;)Lcom/nuance/swype/connect/util/Alarm$Builder;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/nuance/swype/connect/util/Alarm$Builder;"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, extras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 186
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/nuance/swype/connect/util/Alarm$Builder;->extras:Landroid/os/Bundle;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object p0
.end method

.method public flags(I)Lcom/nuance/swype/connect/util/Alarm$Builder;
    .locals 0
    .parameter "flags"

    .prologue
    .line 229
    iput p1, p0, Lcom/nuance/swype/connect/util/Alarm$Builder;->flags:I

    .line 230
    return-object p0
.end method

.method public hours(I)Lcom/nuance/swype/connect/util/Alarm$Builder;
    .locals 0
    .parameter "futureHours"

    .prologue
    .line 112
    iput p1, p0, Lcom/nuance/swype/connect/util/Alarm$Builder;->relativeTriggerHours:I

    .line 113
    return-object p0
.end method

.method public millis(I)Lcom/nuance/swype/connect/util/Alarm$Builder;
    .locals 0
    .parameter "futureMillis"

    .prologue
    .line 157
    iput p1, p0, Lcom/nuance/swype/connect/util/Alarm$Builder;->relativeTriggerMillis:I

    .line 158
    return-object p0
.end method

.method public minutes(I)Lcom/nuance/swype/connect/util/Alarm$Builder;
    .locals 0
    .parameter "futureMinutes"

    .prologue
    .line 127
    iput p1, p0, Lcom/nuance/swype/connect/util/Alarm$Builder;->relativeTriggerMinutes:I

    .line 128
    return-object p0
.end method

.method public repeating(Z)Lcom/nuance/swype/connect/util/Alarm$Builder;
    .locals 0
    .parameter "repeating"

    .prologue
    .line 241
    iput-boolean p1, p0, Lcom/nuance/swype/connect/util/Alarm$Builder;->repeating:Z

    .line 242
    return-object p0
.end method

.method public seconds(I)Lcom/nuance/swype/connect/util/Alarm$Builder;
    .locals 0
    .parameter "futureSeconds"

    .prologue
    .line 142
    iput p1, p0, Lcom/nuance/swype/connect/util/Alarm$Builder;->relativeTriggerSeconds:I

    .line 143
    return-object p0
.end method

.method public triggerTime(J)Lcom/nuance/swype/connect/util/Alarm$Builder;
    .locals 0
    .parameter "millisSinceEpoch"

    .prologue
    .line 171
    iput-wide p1, p0, Lcom/nuance/swype/connect/util/Alarm$Builder;->actualTriggerTime:J

    .line 172
    return-object p0
.end method

.method public wakeDevice(Z)Lcom/nuance/swype/connect/util/Alarm$Builder;
    .locals 0
    .parameter "wakeDevice"

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/nuance/swype/connect/util/Alarm$Builder;->wakeDevice:Z

    .line 216
    return-object p0
.end method
