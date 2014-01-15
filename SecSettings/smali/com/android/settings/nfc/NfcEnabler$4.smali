.class Lcom/android/settings_ex/nfc/NfcEnabler$4;
.super Ljava/lang/Object;
.source "NfcEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 432
    iput-object p1, p0, Lcom/android/settings_ex/nfc/NfcEnabler$4;->this$0:Lcom/android/settings_ex/nfc/NfcEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    const/4 v1, 0x1

    .line 434
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler$4;->this$0:Lcom/android/settings_ex/nfc/NfcEnabler;

    #calls: Lcom/android/settings_ex/nfc/NfcEnabler;->setAndroidBeamSwitch(ZZZ)V
    invoke-static {v0, v1, v1, v1}, Lcom/android/settings_ex/nfc/NfcEnabler;->access$400(Lcom/android/settings_ex/nfc/NfcEnabler;ZZZ)V

    .line 435
    return-void
.end method
