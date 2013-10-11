.class Landroid/widget/ExpandableListView$1;
.super Ljava/lang/Object;
.source "ExpandableListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ExpandableListView;->handleItemClick(Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ExpandableListView;


# direct methods
.method constructor <init>(Landroid/widget/ExpandableListView;)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Landroid/widget/ExpandableListView$1;->this$0:Landroid/widget/ExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Landroid/widget/ExpandableListView$1;->this$0:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 559
    return-void
.end method
