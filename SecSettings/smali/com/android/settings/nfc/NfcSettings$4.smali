.class Lcom/android/settings_ex/nfc/NfcSettings$4;
.super Ljava/lang/Object;
.source "NfcSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/nfc/NfcSettings;->createHelpStep2Dialog()V
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
    .line 396
    iput-object p1, p0, Lcom/android/settings_ex/nfc/NfcSettings$4;->this$0:Lcom/android/settings_ex/nfc/NfcSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcSettings$4;->this$0:Lcom/android/settings_ex/nfc/NfcSettings;

    #getter for: Lcom/android/settings_ex/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings_ex/helpdialog/TwHelpDialog;
    invoke-static {v0}, Lcom/android/settings_ex/nfc/NfcSettings;->access$200(Lcom/android/settings_ex/nfc/NfcSettings;)Lcom/android/settings_ex/helpdialog/TwHelpDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 401
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcSettings$4;->this$0:Lcom/android/settings_ex/nfc/NfcSettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings_ex/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings_ex/helpdialog/TwHelpDialog;
    invoke-static {v0, v1}, Lcom/android/settings_ex/nfc/NfcSettings;->access$202(Lcom/android/settings_ex/nfc/NfcSettings;Lcom/android/settings_ex/helpdialog/TwHelpDialog;)Lcom/android/settings_ex/helpdialog/TwHelpDialog;

    .line 402
    return-void
.end method
