.class Lcom/android/server/toolkit/TabWidget$TabSpec$1;
.super Ljava/lang/Object;
.source "TabWidget.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/toolkit/TabWidget$TabSpec;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/toolkit/TabWidget$TabSpec;


# direct methods
.method constructor <init>(Lcom/android/server/toolkit/TabWidget$TabSpec;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/server/toolkit/TabWidget$TabSpec$1;->this$1:Lcom/android/server/toolkit/TabWidget$TabSpec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 217
    if-eqz p2, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec$1;->this$1:Lcom/android/server/toolkit/TabWidget$TabSpec;

    iget-object v0, v0, Lcom/android/server/toolkit/TabWidget$TabSpec;->this$0:Lcom/android/server/toolkit/TabWidget;

    iget-object v1, p0, Lcom/android/server/toolkit/TabWidget$TabSpec$1;->this$1:Lcom/android/server/toolkit/TabWidget$TabSpec;

    #getter for: Lcom/android/server/toolkit/TabWidget$TabSpec;->mIndex:I
    invoke-static {v1}, Lcom/android/server/toolkit/TabWidget$TabSpec;->access$100(Lcom/android/server/toolkit/TabWidget$TabSpec;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/toolkit/TabWidget;->setCurrentTab(I)V

    .line 219
    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec$1;->this$1:Lcom/android/server/toolkit/TabWidget$TabSpec;

    iget-object v0, v0, Lcom/android/server/toolkit/TabWidget$TabSpec;->this$0:Lcom/android/server/toolkit/TabWidget;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 220
    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec$1;->this$1:Lcom/android/server/toolkit/TabWidget$TabSpec;

    #getter for: Lcom/android/server/toolkit/TabWidget$TabSpec;->mIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/server/toolkit/TabWidget$TabSpec;->access$200(Lcom/android/server/toolkit/TabWidget$TabSpec;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec$1;->this$1:Lcom/android/server/toolkit/TabWidget$TabSpec;

    #getter for: Lcom/android/server/toolkit/TabWidget$TabSpec;->mIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/server/toolkit/TabWidget$TabSpec;->access$200(Lcom/android/server/toolkit/TabWidget$TabSpec;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 222
    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec$1;->this$1:Lcom/android/server/toolkit/TabWidget$TabSpec;

    #getter for: Lcom/android/server/toolkit/TabWidget$TabSpec;->mIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/server/toolkit/TabWidget$TabSpec;->access$200(Lcom/android/server/toolkit/TabWidget$TabSpec;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.REQUEST_WINDOW_MODE"

    const v2, 0x2002010

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 226
    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget$TabSpec$1;->this$1:Lcom/android/server/toolkit/TabWidget$TabSpec;

    iget-object v0, v0, Lcom/android/server/toolkit/TabWidget$TabSpec;->this$0:Lcom/android/server/toolkit/TabWidget;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/toolkit/TabWidget$TabSpec$1;->this$1:Lcom/android/server/toolkit/TabWidget$TabSpec;

    #getter for: Lcom/android/server/toolkit/TabWidget$TabSpec;->mIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/server/toolkit/TabWidget$TabSpec;->access$200(Lcom/android/server/toolkit/TabWidget$TabSpec;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 230
    :cond_0
    return-void
.end method
