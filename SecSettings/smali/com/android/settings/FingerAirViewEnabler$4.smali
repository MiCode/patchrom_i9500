.class Lcom/android/settings_ex/FingerAirViewEnabler$4;
.super Ljava/lang/Object;
.source "FingerAirViewEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/FingerAirViewEnabler;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/FingerAirViewEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/FingerAirViewEnabler;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/settings_ex/FingerAirViewEnabler$4;->this$0:Lcom/android/settings_ex/FingerAirViewEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings_ex/FingerAirViewEnabler$4;->this$0:Lcom/android/settings_ex/FingerAirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/FingerAirViewEnabler;->updateSwitch()V

    .line 186
    return-void
.end method
