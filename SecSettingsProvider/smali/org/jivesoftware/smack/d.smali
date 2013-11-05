.class Lorg/jivesoftware/smack/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kenai/jbosh/BOSHClientRequestListener;


# instance fields
.field final synthetic a:Lorg/jivesoftware/smack/BOSHConnection;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/BOSHConnection;)V
    .locals 0

    iput-object p1, p0, Lorg/jivesoftware/smack/d;->a:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kenai/jbosh/BOSHMessageEvent;)V
    .locals 2

    invoke-virtual {p1}, Lcom/kenai/jbosh/BOSHMessageEvent;->a()Lcom/kenai/jbosh/AbstractBody;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/d;->a:Lorg/jivesoftware/smack/BOSHConnection;

    iget-object v0, v0, Lorg/jivesoftware/smack/BOSHConnection;->m:Ljava/io/Writer;

    invoke-virtual {p1}, Lcom/kenai/jbosh/BOSHMessageEvent;->a()Lcom/kenai/jbosh/AbstractBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kenai/jbosh/AbstractBody;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
