.class Lcom/android/settings_ex/FingerAirViewHelp$7;
.super Ljava/lang/Object;
.source "FingerAirViewHelp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/FingerAirViewHelp;->showTurnOnDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/FingerAirViewHelp;

.field final synthetic val$tutorial_type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/FingerAirViewHelp;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/settings_ex/FingerAirViewHelp$7;->this$0:Lcom/android/settings_ex/FingerAirViewHelp;

    iput-object p2, p0, Lcom/android/settings_ex/FingerAirViewHelp$7;->val$tutorial_type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 335
    iget-object v0, p0, Lcom/android/settings_ex/FingerAirViewHelp$7;->this$0:Lcom/android/settings_ex/FingerAirViewHelp;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/FingerAirViewHelp$7;->this$0:Lcom/android/settings_ex/FingerAirViewHelp;

    #getter for: Lcom/android/settings_ex/FingerAirViewHelp;->mDBItem:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/FingerAirViewHelp;->access$000(Lcom/android/settings_ex/FingerAirViewHelp;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 336
    iget-object v0, p0, Lcom/android/settings_ex/FingerAirViewHelp$7;->this$0:Lcom/android/settings_ex/FingerAirViewHelp;

    #getter for: Lcom/android/settings_ex/FingerAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings_ex/FingerAirViewHelp;->access$200(Lcom/android/settings_ex/FingerAirViewHelp;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 337
    iget-object v0, p0, Lcom/android/settings_ex/FingerAirViewHelp$7;->this$0:Lcom/android/settings_ex/FingerAirViewHelp;

    iget-object v1, p0, Lcom/android/settings_ex/FingerAirViewHelp$7;->val$tutorial_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/FingerAirViewHelp;->startTryActually(Ljava/lang/String;)V

    .line 338
    return-void
.end method
