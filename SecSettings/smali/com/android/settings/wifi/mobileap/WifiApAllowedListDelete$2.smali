.class Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete$2;
.super Ljava/lang/Object;
.source "WifiApAllowedListDelete.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete$2;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete$2;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete;

    #calls: Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete;->removeSelectedList()V
    invoke-static {v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete;->access$300(Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete;)V

    .line 133
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete$2;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedListDelete;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    .line 134
    return-void
.end method
