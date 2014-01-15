.class Lcom/android/settings_ex/wifi/WifiSettings$24;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiSettings;)V
    .locals 0

    .prologue
    .line 3019
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings$24;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .parameter "dialog"

    .prologue
    const/4 v4, 0x0

    .line 3021
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$24;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2100(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiNewDialog;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 3025
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$24;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$24;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2500(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$24;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2500(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v2

    iget v2, v2, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/settings_ex/wifi/WifiSettings;->manageNetwork:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/settings_ex/wifi/WifiSettings;->vzwEditFlag:Z

    if-nez v2, :cond_0

    .line 3033
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$24;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/guide/GuideFragment;->findGuideFragment(Landroid/app/Activity;)Lcom/android/settings_ex/guide/GuideFragmentCallback;

    move-result-object v1

    .line 3035
    .local v1, guide:Lcom/android/settings_ex/guide/GuideFragmentCallback;
    if-eqz v1, :cond_0

    .line 3036
    invoke-interface {v1}, Lcom/android/settings_ex/guide/GuideFragmentCallback;->getOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    .line 3038
    .local v0, dismissListener:Landroid/content/DialogInterface$OnDismissListener;
    if-eqz v0, :cond_0

    .line 3039
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 3045
    .end local v0           #dismissListener:Landroid/content/DialogInterface$OnDismissListener;
    .end local v1           #guide:Lcom/android/settings_ex/guide/GuideFragmentCallback;
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$24;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    const/4 v3, 0x0

    #setter for: Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;
    invoke-static {v2, v3}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2102(Lcom/android/settings_ex/wifi/WifiSettings;Lcom/android/settings_ex/wifi/WifiNewDialog;)Lcom/android/settings_ex/wifi/WifiNewDialog;

    .line 3046
    sput-boolean v4, Lcom/android/settings_ex/wifi/WifiSettings;->vzwEditFlag:Z

    .line 3047
    sput-boolean v4, Lcom/android/settings_ex/wifi/WifiSettings;->vzwViewFlag:Z

    .line 3048
    sput-boolean v4, Lcom/android/settings_ex/wifi/WifiSettings;->manageNetwork:Z

    .line 3049
    sput v4, Lcom/android/settings_ex/wifi/WifiSettings;->forget_network:I

    .line 3050
    sput v4, Lcom/android/settings_ex/wifi/WifiSettings;->cancel_network:I

    .line 3051
    sput v4, Lcom/android/settings_ex/wifi/WifiSettings;->edit_network:I

    .line 3052
    const-string v2, "WifiSettings"

    const-string v3, "vzwViewFlag sets to false : mDismissListener"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3054
    :cond_1
    return-void
.end method
