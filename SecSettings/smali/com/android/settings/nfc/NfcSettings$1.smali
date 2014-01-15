.class Lcom/android/settings_ex/nfc/NfcSettings$1;
.super Ljava/lang/Object;
.source "NfcSettings.java"

# interfaces
.implements Lcom/android/settings_ex/nfc/NfcEnabler$INfcHelpController;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/nfc/NfcSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/nfc/NfcSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/nfc/NfcSettings;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/settings_ex/nfc/NfcSettings$1;->this$0:Lcom/android/settings_ex/nfc/NfcSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcSettings$1;->this$0:Lcom/android/settings_ex/nfc/NfcSettings;

    #getter for: Lcom/android/settings_ex/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings_ex/helpdialog/TwHelpDialog;
    invoke-static {v0}, Lcom/android/settings_ex/nfc/NfcSettings;->access$200(Lcom/android/settings_ex/nfc/NfcSettings;)Lcom/android/settings_ex/helpdialog/TwHelpDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcSettings$1;->this$0:Lcom/android/settings_ex/nfc/NfcSettings;

    #getter for: Lcom/android/settings_ex/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings_ex/helpdialog/TwHelpDialog;
    invoke-static {v0}, Lcom/android/settings_ex/nfc/NfcSettings;->access$200(Lcom/android/settings_ex/nfc/NfcSettings;)Lcom/android/settings_ex/helpdialog/TwHelpDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 135
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcSettings$1;->this$0:Lcom/android/settings_ex/nfc/NfcSettings;

    #setter for: Lcom/android/settings_ex/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings_ex/helpdialog/TwHelpDialog;
    invoke-static {v0, v1}, Lcom/android/settings_ex/nfc/NfcSettings;->access$202(Lcom/android/settings_ex/nfc/NfcSettings;Lcom/android/settings_ex/helpdialog/TwHelpDialog;)Lcom/android/settings_ex/helpdialog/TwHelpDialog;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcSettings$1;->this$0:Lcom/android/settings_ex/nfc/NfcSettings;

    #getter for: Lcom/android/settings_ex/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;
    invoke-static {v0}, Lcom/android/settings_ex/nfc/NfcSettings;->access$300(Lcom/android/settings_ex/nfc/NfcSettings;)Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcSettings$1;->this$0:Lcom/android/settings_ex/nfc/NfcSettings;

    #getter for: Lcom/android/settings_ex/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;
    invoke-static {v0}, Lcom/android/settings_ex/nfc/NfcSettings;->access$300(Lcom/android/settings_ex/nfc/NfcSettings;)Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 140
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcSettings$1;->this$0:Lcom/android/settings_ex/nfc/NfcSettings;

    #setter for: Lcom/android/settings_ex/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;
    invoke-static {v0, v1}, Lcom/android/settings_ex/nfc/NfcSettings;->access$302(Lcom/android/settings_ex/nfc/NfcSettings;Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;)Lcom/android/settings_ex/helpdialog/TwHelpAnimatedDialog;

    .line 142
    :cond_1
    return-void
.end method

.method public show(Z)V
    .locals 2
    .parameter "bOn"

    .prologue
    .line 122
    if-eqz p1, :cond_0

    .line 124
    const-string v0, "NfcSettings"

    const-string v1, "NfcAdapter.STATE_ON, createHelpStep2Dialog() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcSettings$1;->this$0:Lcom/android/settings_ex/nfc/NfcSettings;

    #calls: Lcom/android/settings_ex/nfc/NfcSettings;->createHelpStep2Dialog()V
    invoke-static {v0}, Lcom/android/settings_ex/nfc/NfcSettings;->access$000(Lcom/android/settings_ex/nfc/NfcSettings;)V

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcSettings$1;->this$0:Lcom/android/settings_ex/nfc/NfcSettings;

    #calls: Lcom/android/settings_ex/nfc/NfcSettings;->createHelpStep1Dialog()V
    invoke-static {v0}, Lcom/android/settings_ex/nfc/NfcSettings;->access$100(Lcom/android/settings_ex/nfc/NfcSettings;)V

    goto :goto_0
.end method
