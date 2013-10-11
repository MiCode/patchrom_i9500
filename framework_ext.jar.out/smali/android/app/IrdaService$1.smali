.class Landroid/app/IrdaService$1;
.super Ljava/util/TimerTask;
.source "IrdaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/IrdaService;->blinkLED()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/IrdaService;


# direct methods
.method constructor <init>(Landroid/app/IrdaService;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Landroid/app/IrdaService$1;->this$0:Landroid/app/IrdaService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Landroid/app/IrdaService$1;->this$0:Landroid/app/IrdaService;

    const/4 v1, 0x0

    #calls: Landroid/app/IrdaService;->onoffLED(I)Z
    invoke-static {v0, v1}, Landroid/app/IrdaService;->access$000(Landroid/app/IrdaService;I)Z

    .line 93
    return-void
.end method
