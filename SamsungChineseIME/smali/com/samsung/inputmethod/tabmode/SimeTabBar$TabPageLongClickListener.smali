.class Lcom/samsung/inputmethod/tabmode/SimeTabBar$TabPageLongClickListener;
.super Ljava/lang/Object;
.source "SimeTabBar.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/tabmode/SimeTabBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabPageLongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/tabmode/SimeTabBar;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/tabmode/SimeTabBar;)V
    .locals 0
    .parameter

    .prologue
    .line 825
    iput-object p1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar$TabPageLongClickListener;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    .line 828
    const-string v1, "dot"

    const-string v2, "Dot : "

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 829
    .local v0, data:Landroid/content/ClipData;
    new-instance v1, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v1, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, p1, v2}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 830
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar$TabPageLongClickListener;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    check-cast p1, Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    .end local p1
    #setter for: Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mDragedTabPage:Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    invoke-static {v1, p1}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->access$802(Lcom/samsung/inputmethod/tabmode/SimeTabBar;Lcom/samsung/inputmethod/tabmode/SimeTabPage;)Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    .line 832
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar$TabPageLongClickListener;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    iget-object v2, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar$TabPageLongClickListener;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar$TabPageLongClickListener;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    #getter for: Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mDragedTabPage:Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    invoke-static {v3}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->access$800(Lcom/samsung/inputmethod/tabmode/SimeTabBar;)Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getTabIndex(Lcom/samsung/inputmethod/tabmode/SimeTabPage;)I

    move-result v2

    #setter for: Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mdragTabIndex:I
    invoke-static {v1, v2}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->access$702(Lcom/samsung/inputmethod/tabmode/SimeTabBar;I)I

    .line 833
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar$TabPageLongClickListener;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    #getter for: Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mDragedTabPage:Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    invoke-static {v1}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->access$800(Lcom/samsung/inputmethod/tabmode/SimeTabBar;)Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->getTabID()I

    move-result v1

    const/high16 v2, 0x1111

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar$TabPageLongClickListener;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    #getter for: Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mDragedTabPage:Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    invoke-static {v1}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->access$800(Lcom/samsung/inputmethod/tabmode/SimeTabBar;)Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->getTabID()I

    move-result v1

    const v2, 0x61011000

    if-eq v1, v2, :cond_0

    .line 835
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar$TabPageLongClickListener;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    #getter for: Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v1}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->access$900(Lcom/samsung/inputmethod/tabmode/SimeTabBar;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getTabContainer()Lcom/samsung/inputmethod/tabmode/SimeTabContainer;

    move-result-object v1

    sget-object v2, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;->STATE_DELET:Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->setTabEditorState(Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;)V

    .line 840
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 837
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar$TabPageLongClickListener;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    #getter for: Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v1}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->access$900(Lcom/samsung/inputmethod/tabmode/SimeTabBar;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getTabContainer()Lcom/samsung/inputmethod/tabmode/SimeTabContainer;

    move-result-object v1

    sget-object v2, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;->STATE_DELET_DISABLE:Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->setTabEditorState(Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;)V

    goto :goto_0
.end method
