.class public Lcom/nuance/swype/connect/util/TimeConversion;
.super Ljava/lang/Object;
.source "TimeConversion.java"


# static fields
.field public static final MILLIS_IN_DAY:J = 0x5265c00L

.field public static final MILLIS_IN_HOUR:J = 0x36ee80L

.field public static final MILLIS_IN_MINUTE:J = 0xea60L

.field public static final MILLIS_IN_SECOND:J = 0x3e8L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertDaysToMillis(I)J
    .locals 4
    .parameter "days"

    .prologue
    .line 154
    int-to-long v0, p0

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static convertDaysToTimeStamp(I)J
    .locals 2
    .parameter "days"

    .prologue
    .line 137
    invoke-static {p0}, Lcom/nuance/swype/connect/util/TimeConversion;->convertDaysToMillis(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/util/TimeConversion;->convertMillisToTimeStamp(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static convertDaysToTimeStamp(IJ)J
    .locals 2
    .parameter "days"
    .parameter "timeStampMillis"

    .prologue
    .line 150
    invoke-static {p0}, Lcom/nuance/swype/connect/util/TimeConversion;->convertDaysToMillis(I)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/nuance/swype/connect/util/TimeConversion;->convertMillisToTimeStamp(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static convertHoursToMillis(I)J
    .locals 4
    .parameter "hours"

    .prologue
    .line 158
    int-to-long v0, p0

    const-wide/32 v2, 0x36ee80

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static convertHoursToTimeStamp(I)J
    .locals 2
    .parameter "hours"

    .prologue
    .line 111
    invoke-static {p0}, Lcom/nuance/swype/connect/util/TimeConversion;->convertHoursToMillis(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/util/TimeConversion;->convertMillisToTimeStamp(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static convertHoursToTimeStamp(IJ)J
    .locals 2
    .parameter "hours"
    .parameter "timeStampMillis"

    .prologue
    .line 125
    invoke-static {p0}, Lcom/nuance/swype/connect/util/TimeConversion;->convertHoursToMillis(I)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/nuance/swype/connect/util/TimeConversion;->convertMillisToTimeStamp(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static convertMillisToTimeStamp(J)J
    .locals 2
    .parameter "millis"

    .prologue
    .line 33
    invoke-static {}, Lcom/nuance/swype/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/nuance/swype/connect/util/TimeConversion;->convertMillisToTimeStamp(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static convertMillisToTimeStamp(JJ)J
    .locals 2
    .parameter "millis"
    .parameter "timeStampMillis"

    .prologue
    .line 47
    add-long v0, p2, p0

    return-wide v0
.end method

.method public static convertMinutesToMillis(I)J
    .locals 4
    .parameter "minutes"

    .prologue
    .line 162
    int-to-long v0, p0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static convertMinutesToTimeStamp(I)J
    .locals 2
    .parameter "minutes"

    .prologue
    .line 85
    invoke-static {p0}, Lcom/nuance/swype/connect/util/TimeConversion;->convertMinutesToMillis(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/util/TimeConversion;->convertMillisToTimeStamp(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static convertMinutesToTimeStamp(IJ)J
    .locals 2
    .parameter "minutes"
    .parameter "timeStampMillis"

    .prologue
    .line 99
    invoke-static {p0}, Lcom/nuance/swype/connect/util/TimeConversion;->convertMinutesToMillis(I)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/nuance/swype/connect/util/TimeConversion;->convertMillisToTimeStamp(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static convertSecondsToMillis(J)J
    .locals 2
    .parameter "seconds"

    .prologue
    .line 173
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p0

    return-wide v0
.end method

.method public static convertSecondsToTimeStamp(J)J
    .locals 2
    .parameter "seconds"

    .prologue
    .line 59
    invoke-static {p0, p1}, Lcom/nuance/swype/connect/util/TimeConversion;->convertSecondsToMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/util/TimeConversion;->convertMillisToTimeStamp(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static convertSecondsToTimeStamp(JJ)J
    .locals 2
    .parameter "seconds"
    .parameter "timeStampMillis"

    .prologue
    .line 73
    invoke-static {p0, p1}, Lcom/nuance/swype/connect/util/TimeConversion;->convertSecondsToMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3}, Lcom/nuance/swype/connect/util/TimeConversion;->convertMillisToTimeStamp(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getCurrentTime()J
    .locals 2

    .prologue
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 20
    .local v0, time:J
    return-wide v0
.end method
