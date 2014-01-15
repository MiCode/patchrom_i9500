.class Lcom/android/settings_ex/nfc/NfcEnabler$6;
.super Ljava/lang/Object;
.source "NfcEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/nfc/NfcEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/nfc/NfcEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/nfc/NfcEnabler;)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lcom/android/settings_ex/nfc/NfcEnabler$6;->this$0:Lcom/android/settings_ex/nfc/NfcEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler$6;->this$0:Lcom/android/settings_ex/nfc/NfcEnabler;

    #getter for: Lcom/android/settings_ex/nfc/NfcEnabler;->mNfcSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings_ex/nfc/NfcEnabler;->access$700(Lcom/android/settings_ex/nfc/NfcEnabler;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 501
    return-void
.end method
