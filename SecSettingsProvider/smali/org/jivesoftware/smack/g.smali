.class Lorg/jivesoftware/smack/g;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lorg/jivesoftware/smack/f;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/f;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/jivesoftware/smack/g;->a:Lorg/jivesoftware/smack/f;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/jivesoftware/smack/g;->a:Lorg/jivesoftware/smack/f;

    invoke-static {v0}, Lorg/jivesoftware/smack/f;->a(Lorg/jivesoftware/smack/f;)V

    return-void
.end method
