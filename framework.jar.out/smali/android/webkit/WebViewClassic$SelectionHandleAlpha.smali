.class Landroid/webkit/WebViewClassic$SelectionHandleAlpha;
.super Ljava/lang/Object;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionHandleAlpha"
.end annotation


# instance fields
.field private mAlpha:I

.field private mTargetAlpha:I

.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method private constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6958
    iput-object p1, p0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6959
    iput v0, p0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->mAlpha:I

    .line 6960
    iput v0, p0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->mTargetAlpha:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewClassic$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6958
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;-><init>(Landroid/webkit/WebViewClassic;)V

    return-void
.end method


# virtual methods
.method public getAlpha()I
    .locals 1

    .prologue
    .line 6977
    iget v0, p0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->mAlpha:I

    return v0
.end method

.method public getTargetAlpha()I
    .locals 1

    .prologue
    .line 6984
    iget v0, p0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->mTargetAlpha:I

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 6962
    iput p1, p0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->mAlpha:I

    .line 6963
    iget-object v0, p0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$1600(Landroid/webkit/WebViewClassic;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6965
    iget-object v0, p0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mThemeIsDeviceDefault:Z
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$1400(Landroid/webkit/WebViewClassic;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6966
    iget-object v0, p0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$1600(Landroid/webkit/WebViewClassic;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 6967
    iget-object v0, p0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$3300(Landroid/webkit/WebViewClassic;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 6968
    iget-object v0, p0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$3400(Landroid/webkit/WebViewClassic;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 6972
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 6974
    :cond_1
    return-void
.end method

.method public setTargetAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 6981
    iput p1, p0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->mTargetAlpha:I

    .line 6982
    return-void
.end method
