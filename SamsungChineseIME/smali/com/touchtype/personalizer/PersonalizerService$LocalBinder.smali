.class public Lcom/touchtype/personalizer/PersonalizerService$LocalBinder;
.super Landroid/os/Binder;
.source "PersonalizerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype/personalizer/PersonalizerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/touchtype/personalizer/PersonalizerService;


# direct methods
.method public constructor <init>(Lcom/touchtype/personalizer/PersonalizerService;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerService$LocalBinder;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/touchtype/personalizer/PersonalizerService;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$LocalBinder;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    return-object v0
.end method
