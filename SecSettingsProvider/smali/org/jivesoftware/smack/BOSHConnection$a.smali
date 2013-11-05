.class Lorg/jivesoftware/smack/BOSHConnection$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kenai/jbosh/BOSHClientConnListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/BOSHConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lorg/jivesoftware/smack/BOSHConnection;

.field private final b:Lorg/jivesoftware/smack/BOSHConnection;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/BOSHConnection;Lorg/jivesoftware/smack/BOSHConnection;)V
    .locals 0

    iput-object p1, p0, Lorg/jivesoftware/smack/BOSHConnection$a;->a:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/jivesoftware/smack/BOSHConnection$a;->b:Lorg/jivesoftware/smack/BOSHConnection;

    return-void
.end method


# virtual methods
.method public a(Lcom/kenai/jbosh/BOSHClientConnEvent;)V
    .locals 4

    invoke-virtual {p1}, Lcom/kenai/jbosh/BOSHClientConnEvent;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection$a;->a:Lorg/jivesoftware/smack/BOSHConnection;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/BOSHConnection;->a(IILjava/lang/Exception;)V

    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection$a;->a:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-virtual {p1}, Lcom/kenai/jbosh/BOSHClientConnEvent;->b()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/BOSHConnection;->a(Ljava/lang/Exception;)V

    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection$a;->a:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-static {v0}, Lorg/jivesoftware/smack/BOSHConnection;->d(Lorg/jivesoftware/smack/BOSHConnection;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection$a;->a:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-static {v0}, Lorg/jivesoftware/smack/BOSHConnection;->d(Lorg/jivesoftware/smack/BOSHConnection;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
