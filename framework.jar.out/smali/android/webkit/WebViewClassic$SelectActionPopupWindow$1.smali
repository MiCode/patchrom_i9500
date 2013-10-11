.class Landroid/webkit/WebViewClassic$SelectActionPopupWindow$1;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->popupAnimationEffect(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebViewClassic$SelectActionPopupWindow;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic$SelectActionPopupWindow;)V
    .locals 0

    .prologue
    .line 1585
    iput-object p1, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow$1;->this$1:Landroid/webkit/WebViewClassic$SelectActionPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1587
    iget-object v1, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow$1;->this$1:Landroid/webkit/WebViewClassic$SelectActionPopupWindow;

    iget-object v1, v1, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-int v1, v1

    mul-int/lit16 v0, v1, 0xc8

    .line 1589
    .local v0, t:I
    const-wide/16 v1, 0xc8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 1591
    :goto_0
    add-int/lit8 v0, v0, -0x3

    .line 1592
    if-gtz v0, :cond_0

    .line 1593
    iget-object v1, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow$1;->this$1:Landroid/webkit/WebViewClassic$SelectActionPopupWindow;

    #getter for: Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;
    invoke-static {v1}, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->access$1800(Landroid/webkit/WebViewClassic$SelectActionPopupWindow;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 1601
    :goto_1
    return-void

    .line 1596
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewClassic$SelectActionPopupWindow$1;->this$1:Landroid/webkit/WebViewClassic$SelectActionPopupWindow;

    #getter for: Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;
    invoke-static {v1}, Landroid/webkit/WebViewClassic$SelectActionPopupWindow;->access$1800(Landroid/webkit/WebViewClassic$SelectActionPopupWindow;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 1598
    const-wide/16 v1, 0x2

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1600
    :catch_0
    move-exception v1

    goto :goto_1
.end method
