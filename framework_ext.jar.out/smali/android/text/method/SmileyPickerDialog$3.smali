.class Landroid/text/method/SmileyPickerDialog$3;
.super Landroid/content/BroadcastReceiver;
.source "SmileyPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/SmileyPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/text/method/SmileyPickerDialog;


# direct methods
.method constructor <init>(Landroid/text/method/SmileyPickerDialog;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Landroid/text/method/SmileyPickerDialog$3;->this$0:Landroid/text/method/SmileyPickerDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 303
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Landroid/text/method/SmileyPickerDialog$3;->this$0:Landroid/text/method/SmileyPickerDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 308
    :cond_0
    return-void
.end method
