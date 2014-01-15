.class Lcom/android/settings_ex/nfc/SBeam$1;
.super Ljava/lang/Object;
.source "SBeam.java"

# interfaces
.implements Lcom/android/settings_ex/nfc/SBeamEnabler$ISBeamHelpController;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/nfc/SBeam;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/nfc/SBeam;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/nfc/SBeam;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/settings_ex/nfc/SBeam$1;->this$0:Lcom/android/settings_ex/nfc/SBeam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/nfc/SBeam$1;->this$0:Lcom/android/settings_ex/nfc/SBeam;

    #getter for: Lcom/android/settings_ex/nfc/SBeam;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;
    invoke-static {v0}, Lcom/android/settings_ex/nfc/SBeam;->access$200(Lcom/android/settings_ex/nfc/SBeam;)Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/nfc/SBeam$1;->this$0:Lcom/android/settings_ex/nfc/SBeam;

    #getter for: Lcom/android/settings_ex/nfc/SBeam;->mbShowingHelp:Z
    invoke-static {v0}, Lcom/android/settings_ex/nfc/SBeam;->access$000(Lcom/android/settings_ex/nfc/SBeam;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/settings_ex/nfc/SBeam$1;->this$0:Lcom/android/settings_ex/nfc/SBeam;

    #getter for: Lcom/android/settings_ex/nfc/SBeam;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;
    invoke-static {v0}, Lcom/android/settings_ex/nfc/SBeam;->access$200(Lcom/android/settings_ex/nfc/SBeam;)Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 128
    iget-object v0, p0, Lcom/android/settings_ex/nfc/SBeam$1;->this$0:Lcom/android/settings_ex/nfc/SBeam;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings_ex/nfc/SBeam;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;
    invoke-static {v0, v1}, Lcom/android/settings_ex/nfc/SBeam;->access$202(Lcom/android/settings_ex/nfc/SBeam;Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;)Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/nfc/SBeam$1;->this$0:Lcom/android/settings_ex/nfc/SBeam;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings_ex/nfc/SBeam;->mbShowingHelp:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/nfc/SBeam;->access$002(Lcom/android/settings_ex/nfc/SBeam;Z)Z

    .line 131
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings_ex/nfc/SBeam$1;->this$0:Lcom/android/settings_ex/nfc/SBeam;

    #getter for: Lcom/android/settings_ex/nfc/SBeam;->mbShowingHelp:Z
    invoke-static {v0}, Lcom/android/settings_ex/nfc/SBeam;->access$000(Lcom/android/settings_ex/nfc/SBeam;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/nfc/SBeam$1;->this$0:Lcom/android/settings_ex/nfc/SBeam;

    #calls: Lcom/android/settings_ex/nfc/SBeam;->createHelpDialog()V
    invoke-static {v0}, Lcom/android/settings_ex/nfc/SBeam;->access$100(Lcom/android/settings_ex/nfc/SBeam;)V

    .line 121
    iget-object v0, p0, Lcom/android/settings_ex/nfc/SBeam$1;->this$0:Lcom/android/settings_ex/nfc/SBeam;

    #getter for: Lcom/android/settings_ex/nfc/SBeam;->mHelpDialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;
    invoke-static {v0}, Lcom/android/settings_ex/nfc/SBeam;->access$200(Lcom/android/settings_ex/nfc/SBeam;)Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 122
    iget-object v0, p0, Lcom/android/settings_ex/nfc/SBeam$1;->this$0:Lcom/android/settings_ex/nfc/SBeam;

    const/4 v1, 0x1

    #setter for: Lcom/android/settings_ex/nfc/SBeam;->mbShowingHelp:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/nfc/SBeam;->access$002(Lcom/android/settings_ex/nfc/SBeam;Z)Z

    goto :goto_0
.end method
