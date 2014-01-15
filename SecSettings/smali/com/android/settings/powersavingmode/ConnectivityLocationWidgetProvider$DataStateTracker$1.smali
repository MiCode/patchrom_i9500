.class Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$DataStateTracker$1;
.super Landroid/os/AsyncTask;
.source "ConnectivityLocationWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$DataStateTracker;->requestStateChange(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$DataStateTracker;

.field final synthetic val$connManager:Landroid/net/ConnectivityManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$desiredState:Z


# direct methods
.method constructor <init>(Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$DataStateTracker;Landroid/net/ConnectivityManager;ZLandroid/content/Context;)V
    .locals 0

    .prologue
    .line 567
    iput-object p1, p0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$DataStateTracker$1;->this$0:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$DataStateTracker;

    iput-object p2, p0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$DataStateTracker$1;->val$connManager:Landroid/net/ConnectivityManager;

    iput-boolean p3, p0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$DataStateTracker$1;->val$desiredState:Z

    iput-object p4, p0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$DataStateTracker$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .parameter "args"

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$DataStateTracker$1;->val$connManager:Landroid/net/ConnectivityManager;

    iget-boolean v1, p0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$DataStateTracker$1;->val$desiredState:Z

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 586
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 567
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$DataStateTracker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 592
    iget-object v1, p0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$DataStateTracker$1;->this$0:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$DataStateTracker;

    iget-object v2, p0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$DataStateTracker$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 593
    iget-object v0, p0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$DataStateTracker$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 594
    return-void

    .line 592
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 567
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$DataStateTracker$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
