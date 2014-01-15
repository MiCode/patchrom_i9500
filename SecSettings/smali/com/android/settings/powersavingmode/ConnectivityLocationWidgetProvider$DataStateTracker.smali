.class final Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$DataStateTracker;
.super Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;
.source "ConnectivityLocationWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DataStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 534
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;-><init>(Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 534
    invoke-direct {p0}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$DataStateTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 550
    #calls: Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->getDataState(Landroid/content/Context;)Z
    invoke-static {p1}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->access$700(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getButtonId()I
    .locals 1

    .prologue
    .line 536
    const v0, 0x7f0b0086

    return v0
.end method

.method public getButtonImageId(Z)I
    .locals 1
    .parameter "on"

    .prologue
    .line 544
    if-eqz p1, :cond_0

    const v0, 0x7f020340

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f02033f

    goto :goto_0
.end method

.method public getIndicatorId()I
    .locals 1

    .prologue
    .line 540
    const v0, 0x7f0b0088

    return v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "unused"

    .prologue
    .line 555
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$DataStateTracker;->getActualState(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 556
    return-void
.end method

.method public requestStateChange(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 560
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 562
    .local v0, connManager:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 563
    const-string v1, "ConnectivityLocationWidgetProvider"

    const-string v2, "No ConnectivityManager."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :goto_0
    return-void

    .line 567
    :cond_0
    new-instance v1, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$DataStateTracker$1;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$DataStateTracker$1;-><init>(Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$DataStateTracker;Landroid/net/ConnectivityManager;ZLandroid/content/Context;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
