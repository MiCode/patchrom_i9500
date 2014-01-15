.class Lcom/android/settings_ex/nfc/NfcEnabler$2;
.super Ljava/lang/Object;
.source "NfcEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/nfc/NfcEnabler;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
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
    .line 405
    iput-object p1, p0, Lcom/android/settings_ex/nfc/NfcEnabler$2;->this$0:Lcom/android/settings_ex/nfc/NfcEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 408
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler$2;->this$0:Lcom/android/settings_ex/nfc/NfcEnabler;

    #getter for: Lcom/android/settings_ex/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v0}, Lcom/android/settings_ex/nfc/NfcEnabler;->access$100(Lcom/android/settings_ex/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    .line 409
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler$2;->this$0:Lcom/android/settings_ex/nfc/NfcEnabler;

    #calls: Lcom/android/settings_ex/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V
    invoke-static {v0, v3, v2, v2}, Lcom/android/settings_ex/nfc/NfcEnabler;->access$400(Lcom/android/settings_ex/nfc/NfcEnabler;ZZZ)V

    .line 411
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler$2;->this$0:Lcom/android/settings_ex/nfc/NfcEnabler;

    #getter for: Lcom/android/settings_ex/nfc/NfcEnabler;->mSBeamSwitch:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings_ex/nfc/NfcEnabler;->access$500(Lcom/android/settings_ex/nfc/NfcEnabler;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler$2;->this$0:Lcom/android/settings_ex/nfc/NfcEnabler;

    #calls: Lcom/android/settings_ex/nfc/NfcEnabler;->setNfcSBeamSwitch(ZZ)V
    invoke-static {v0, v3, v2}, Lcom/android/settings_ex/nfc/NfcEnabler;->access$600(Lcom/android/settings_ex/nfc/NfcEnabler;ZZ)V

    .line 417
    :cond_0
    return-void
.end method
