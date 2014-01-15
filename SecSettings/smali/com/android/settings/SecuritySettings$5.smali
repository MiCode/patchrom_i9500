.class Lcom/android/settings_ex/SecuritySettings$5;
.super Landroid/content/BroadcastReceiver;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/SecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SecuritySettings;)V
    .locals 0

    .prologue
    .line 1289
    iput-object p1, p0, Lcom/android/settings_ex/SecuritySettings$5;->this$0:Lcom/android/settings_ex/SecuritySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings$5;->this$0:Lcom/android/settings_ex/SecuritySettings;

    #calls: Lcom/android/settings_ex/SecuritySettings;->updateSIMLockEnable()V
    invoke-static {v0}, Lcom/android/settings_ex/SecuritySettings;->access$000(Lcom/android/settings_ex/SecuritySettings;)V

    .line 1293
    return-void
.end method
