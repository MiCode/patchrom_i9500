.class Lcom/samsung/wfd/WFDUibcManager$1;
.super Landroid/view/OrientationEventListener;
.source "WFDUibcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/wfd/WFDUibcManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wfd/WFDUibcManager;


# direct methods
.method constructor <init>(Lcom/samsung/wfd/WFDUibcManager;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/samsung/wfd/WFDUibcManager$1;->this$0:Lcom/samsung/wfd/WFDUibcManager;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 99
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/samsung/wfd/WFDUibcManager$1;->this$0:Lcom/samsung/wfd/WFDUibcManager;

    #setter for: Lcom/samsung/wfd/WFDUibcManager;->mOrientation:I
    invoke-static {v0, p1}, Lcom/samsung/wfd/WFDUibcManager;->access$002(Lcom/samsung/wfd/WFDUibcManager;I)I

    .line 103
    :cond_0
    return-void
.end method
