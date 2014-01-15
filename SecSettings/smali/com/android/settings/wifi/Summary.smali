.class Lcom/android/settings_ex/wifi/Summary;
.super Ljava/lang/Object;
.source "Summary.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "state"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/settings_ex/wifi/Summary;->get(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static get(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "ssid"
    .parameter "CwState"

    .prologue
    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-nez p1, :cond_1

    const v2, 0x7f0a001f

    :goto_0
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, formats:[Ljava/lang/String;
    move v1, p2

    .line 42
    .local v1, index:I
    const-string v2, "WIFI_SUM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wifi Summary: ssid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " CwState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 45
    :cond_0
    const/4 v2, 0x0

    .line 47
    :goto_1
    return-object v2

    .line 39
    .end local v0           #formats:[Ljava/lang/String;
    .end local v1           #index:I
    :cond_1
    const v2, 0x7f0a0020

    goto :goto_0

    .line 47
    .restart local v0       #formats:[Ljava/lang/String;
    .restart local v1       #index:I
    :cond_2
    aget-object v2, v0, v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method static get(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "ssid"
    .parameter "state"

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-nez p1, :cond_1

    const v2, 0x7f0a001f

    :goto_0
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, formats:[Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    .line 31
    .local v1, index:I
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 32
    :cond_0
    const/4 v2, 0x0

    .line 34
    :goto_1
    return-object v2

    .line 27
    .end local v0           #formats:[Ljava/lang/String;
    .end local v1           #index:I
    :cond_1
    const v2, 0x7f0a0020

    goto :goto_0

    .line 34
    .restart local v0       #formats:[Ljava/lang/String;
    .restart local v1       #index:I
    :cond_2
    aget-object v2, v0, v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
