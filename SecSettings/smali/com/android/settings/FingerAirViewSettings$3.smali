.class Lcom/android/settings_ex/FingerAirViewSettings$3;
.super Ljava/lang/Object;
.source "FingerAirViewSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/FingerAirViewSettings;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/FingerAirViewSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/FingerAirViewSettings;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/settings_ex/FingerAirViewSettings$3;->this$0:Lcom/android/settings_ex/FingerAirViewSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/settings_ex/FingerAirViewSettings$3;->this$0:Lcom/android/settings_ex/FingerAirViewSettings;

    #getter for: Lcom/android/settings_ex/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings_ex/FingerAirViewSettings;->access$000(Lcom/android/settings_ex/FingerAirViewSettings;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 352
    return-void
.end method
