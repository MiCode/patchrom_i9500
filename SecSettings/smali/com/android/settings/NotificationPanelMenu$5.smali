.class Lcom/android/settings_ex/NotificationPanelMenu$5;
.super Ljava/lang/Object;
.source "NotificationPanelMenu.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/NotificationPanelMenu;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/NotificationPanelMenu;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/NotificationPanelMenu;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/settings_ex/NotificationPanelMenu$5;->this$0:Lcom/android/settings_ex/NotificationPanelMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 204
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 205
    iget-object v1, p0, Lcom/android/settings_ex/NotificationPanelMenu$5;->this$0:Lcom/android/settings_ex/NotificationPanelMenu;

    #getter for: Lcom/android/settings_ex/NotificationPanelMenu;->mFromQuickPanel:Z
    invoke-static {v1}, Lcom/android/settings_ex/NotificationPanelMenu;->access$700(Lcom/android/settings_ex/NotificationPanelMenu;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    const-string v1, "NotificationPanelMenu"

    const-string v2, "onKey() is called. And mFromQuickPanel is true"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v1, p0, Lcom/android/settings_ex/NotificationPanelMenu$5;->this$0:Lcom/android/settings_ex/NotificationPanelMenu;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 208
    .local v0, mStatusBar:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->expandSettingsPanel()V

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/NotificationPanelMenu$5;->this$0:Lcom/android/settings_ex/NotificationPanelMenu;

    invoke-virtual {v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    .line 215
    .end local v0           #mStatusBar:Landroid/app/StatusBarManager;
    :cond_1
    return v3
.end method
