.class Lcom/android/settings_ex/AirplaneModeSwitchEnabler$3;
.super Ljava/lang/Object;
.source "AirplaneModeSwitchEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/AirplaneModeSwitchEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/AirplaneModeSwitchEnabler;

.field final synthetic val$value:Z


# direct methods
.method constructor <init>(Lcom/android/settings_ex/AirplaneModeSwitchEnabler;Z)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/settings_ex/AirplaneModeSwitchEnabler$3;->this$0:Lcom/android/settings_ex/AirplaneModeSwitchEnabler;

    iput-boolean p2, p0, Lcom/android/settings_ex/AirplaneModeSwitchEnabler$3;->val$value:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/settings_ex/AirplaneModeSwitchEnabler$3;->this$0:Lcom/android/settings_ex/AirplaneModeSwitchEnabler;

    #getter for: Lcom/android/settings_ex/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/AirplaneModeSwitchEnabler;->access$100(Lcom/android/settings_ex/AirplaneModeSwitchEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/settings_ex/AirplaneModeSwitchEnabler$3;->val$value:Z

    if-eq v0, v1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/settings_ex/AirplaneModeSwitchEnabler$3;->this$0:Lcom/android/settings_ex/AirplaneModeSwitchEnabler;

    iget-boolean v1, p0, Lcom/android/settings_ex/AirplaneModeSwitchEnabler$3;->val$value:Z

    #calls: Lcom/android/settings_ex/AirplaneModeSwitchEnabler;->setAirplaneModeOn(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/AirplaneModeSwitchEnabler;->access$200(Lcom/android/settings_ex/AirplaneModeSwitchEnabler;Z)V

    .line 190
    :cond_0
    return-void
.end method
