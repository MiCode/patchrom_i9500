.class Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList$5;
.super Ljava/lang/Object;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList$5;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList$5;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;

    #calls: Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;->startDeletePreference()V
    invoke-static {v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;->access$600(Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;)V

    .line 195
    return-void
.end method
