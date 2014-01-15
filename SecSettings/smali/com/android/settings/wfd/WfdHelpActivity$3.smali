.class Lcom/android/settings_ex/wfd/WfdHelpActivity$3;
.super Ljava/lang/Object;
.source "WfdHelpActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wfd/WfdHelpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wfd/WfdHelpActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wfd/WfdHelpActivity;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity$3;->this$0:Lcom/android/settings_ex/wfd/WfdHelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity$3;->this$0:Lcom/android/settings_ex/wfd/WfdHelpActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings_ex/wfd/WfdHelpActivity;->changeNfcEnabled(Landroid/content/Context;Z)Z

    .line 167
    return-void
.end method
