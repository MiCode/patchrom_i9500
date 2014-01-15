.class Lcom/android/settings_ex/wifi/WifiNewDialog$4;
.super Ljava/lang/Object;
.source "WifiNewDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiNewDialog;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiNewDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiNewDialog;)V
    .locals 0

    .prologue
    .line 956
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiNewDialog$4;->this$0:Lcom/android/settings_ex/wifi/WifiNewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiNewDialog$4;->this$0:Lcom/android/settings_ex/wifi/WifiNewDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiNewDialog;->enableSubmitIfAppropriate()V

    .line 959
    return-void
.end method
