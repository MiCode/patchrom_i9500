.class final Landroid/widget/ScrollView$CheckForDoubleFling;
.super Ljava/lang/Object;
.source "ScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForDoubleFling"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Landroid/widget/ScrollView;)V
    .locals 0

    .prologue
    .line 1363
    iput-object p1, p0, Landroid/widget/ScrollView$CheckForDoubleFling;->this$0:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1365
    iget-object v0, p0, Landroid/widget/ScrollView$CheckForDoubleFling;->this$0:Landroid/widget/ScrollView;

    const/16 v1, 0x64

    iput v1, v0, Landroid/widget/ScrollView;->mFlingMode:I

    .line 1369
    return-void
.end method
