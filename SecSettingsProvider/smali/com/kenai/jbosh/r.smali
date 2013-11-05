.class Lcom/kenai/jbosh/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/kenai/jbosh/BOSHClient;


# direct methods
.method constructor <init>(Lcom/kenai/jbosh/BOSHClient;)V
    .locals 0

    iput-object p1, p0, Lcom/kenai/jbosh/r;->a:Lcom/kenai/jbosh/BOSHClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/kenai/jbosh/r;->a:Lcom/kenai/jbosh/BOSHClient;

    invoke-static {v0}, Lcom/kenai/jbosh/BOSHClient;->a(Lcom/kenai/jbosh/BOSHClient;)V

    return-void
.end method
