.class Lcom/android/settings_ex/wifi/WifiSettings$8;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiSettings;->startWith(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiSettings;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiSettings;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings$8;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    iput-object p2, p0, Lcom/android/settings_ex/wifi/WifiSettings$8;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$8;->val$activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$8;->val$activity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings_ex.wifi.WIFI_ON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1032
    :cond_0
    return-void
.end method
