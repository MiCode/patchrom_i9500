.class Lorg/jivesoftware/smack/e;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lorg/jivesoftware/smack/BOSHConnection;

.field private b:Ljava/lang/Thread;

.field private c:I


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/BOSHConnection;)V
    .locals 1

    iput-object p1, p0, Lorg/jivesoftware/smack/e;->a:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p0, p0, Lorg/jivesoftware/smack/e;->b:Ljava/lang/Thread;

    const/16 v0, 0x400

    iput v0, p0, Lorg/jivesoftware/smack/e;->c:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget v0, p0, Lorg/jivesoftware/smack/e;->c:I

    new-array v0, v0, [C

    :goto_0
    iget-object v1, p0, Lorg/jivesoftware/smack/e;->a:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-static {v1}, Lorg/jivesoftware/smack/BOSHConnection;->b(Lorg/jivesoftware/smack/BOSHConnection;)Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/e;->b:Ljava/lang/Thread;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/jivesoftware/smack/e;->a:Lorg/jivesoftware/smack/BOSHConnection;

    invoke-static {v1}, Lorg/jivesoftware/smack/BOSHConnection;->c(Lorg/jivesoftware/smack/BOSHConnection;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/jivesoftware/smack/e;->a:Lorg/jivesoftware/smack/BOSHConnection;

    iget-object v1, v1, Lorg/jivesoftware/smack/BOSHConnection;->l:Ljava/io/Reader;

    const/4 v2, 0x0

    iget v3, p0, Lorg/jivesoftware/smack/e;->c:I

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/Reader;->read([CII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    return-void
.end method
