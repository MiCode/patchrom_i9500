.class Lcom/samsung/inputmethod/tabmode/SimeTabBar$1;
.super Ljava/util/TimerTask;
.source "SimeTabBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/tabmode/SimeTabBar;->refreshOthersPosition(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/tabmode/SimeTabBar;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/tabmode/SimeTabBar;)V
    .locals 0
    .parameter

    .prologue
    .line 696
    iput-object p1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar$1;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 700
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 701
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar$1;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getDragedTabPage()Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 702
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar$1;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    #getter for: Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mRefreshPos:[I
    invoke-static {v1}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->access$000(Lcom/samsung/inputmethod/tabmode/SimeTabBar;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 703
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar$1;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    #getter for: Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mRefreshPos:[I
    invoke-static {v1}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->access$000(Lcom/samsung/inputmethod/tabmode/SimeTabBar;)[I

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 704
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar$1;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    #getter for: Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mInsertPosition:I
    invoke-static {v1}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->access$100(Lcom/samsung/inputmethod/tabmode/SimeTabBar;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 705
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar$1;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    #getter for: Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mmRefreshPosHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->access$200(Lcom/samsung/inputmethod/tabmode/SimeTabBar;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 706
    return-void
.end method
