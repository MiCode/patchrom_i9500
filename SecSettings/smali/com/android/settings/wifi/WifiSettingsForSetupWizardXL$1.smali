.class Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL$1;
.super Ljava/lang/Object;
.source "WifiSettingsForSetupWizardXL.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->onBackButtonPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;)V
    .locals 0

    .prologue
    .line 607
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL$1;->this$0:Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 612
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 609
    return-void
.end method
