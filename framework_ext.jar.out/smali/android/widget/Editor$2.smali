.class Landroid/widget/Editor$2;
.super Landroid/content/BroadcastReceiver;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method constructor <init>(Landroid/widget/Editor;)V
    .locals 0

    .prologue
    .line 6306
    iput-object p1, p0, Landroid/widget/Editor$2;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 6308
    const-string v4, "caller"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6309
    .local v0, caller:Ljava/lang/String;
    const/4 v3, 0x0

    .line 6311
    .local v3, target_text:Ljava/lang/String;
    iget-object v4, p0, Landroid/widget/Editor$2;->this$0:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mCaller:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6312
    const-string v4, "result_code"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 6314
    .local v2, resultCode:I
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 6315
    const-string v4, "target_text"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6316
    iget-object v4, p0, Landroid/widget/Editor$2;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/Editor$2;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->selection_start:I
    invoke-static {v5}, Landroid/widget/Editor;->access$4100(Landroid/widget/Editor;)I

    move-result v5

    iget-object v6, p0, Landroid/widget/Editor$2;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->selection_end:I
    invoke-static {v6}, Landroid/widget/Editor;->access$4200(Landroid/widget/Editor;)I

    move-result v6

    invoke-virtual {v4, v5, v6, v3}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 6319
    :cond_0
    const-string v4, "Editor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "target text = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6323
    :try_start_0
    iget-object v4, p0, Landroid/widget/Editor$2;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/Editor$2;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v5}, Landroid/widget/Editor;->access$4300(Landroid/widget/Editor;)Landroid/content/BroadcastReceiver;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6329
    .end local v2           #resultCode:I
    :cond_1
    :goto_0
    return-void

    .line 6324
    .restart local v2       #resultCode:I
    :catch_0
    move-exception v1

    .line 6325
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
