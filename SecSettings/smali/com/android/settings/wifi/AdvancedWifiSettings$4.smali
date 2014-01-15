.class Lcom/android/settings_ex/wifi/AdvancedWifiSettings$4;
.super Ljava/lang/Object;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)V
    .locals 0

    .prologue
    .line 1099
    iput-object p1, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$4;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 1101
    new-instance v0, Lcom/android/settings_ex/wifi/WifiReset;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$4;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->access$400(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/WifiReset;-><init>(Landroid/content/Context;)V

    .line 1102
    .local v0, reset:Lcom/android/settings_ex/wifi/WifiReset;
    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiReset;->start()V

    .line 1103
    return-void
.end method
