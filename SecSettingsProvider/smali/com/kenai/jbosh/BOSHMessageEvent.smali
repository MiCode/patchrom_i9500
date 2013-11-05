.class public final Lcom/kenai/jbosh/BOSHMessageEvent;
.super Ljava/util/EventObject;


# instance fields
.field private final a:Lcom/kenai/jbosh/AbstractBody;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lcom/kenai/jbosh/AbstractBody;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "message body may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/kenai/jbosh/BOSHMessageEvent;->a:Lcom/kenai/jbosh/AbstractBody;

    return-void
.end method

.method static a(Lcom/kenai/jbosh/BOSHClient;Lcom/kenai/jbosh/AbstractBody;)Lcom/kenai/jbosh/BOSHMessageEvent;
    .locals 1

    new-instance v0, Lcom/kenai/jbosh/BOSHMessageEvent;

    invoke-direct {v0, p0, p1}, Lcom/kenai/jbosh/BOSHMessageEvent;-><init>(Ljava/lang/Object;Lcom/kenai/jbosh/AbstractBody;)V

    return-object v0
.end method

.method static b(Lcom/kenai/jbosh/BOSHClient;Lcom/kenai/jbosh/AbstractBody;)Lcom/kenai/jbosh/BOSHMessageEvent;
    .locals 1

    new-instance v0, Lcom/kenai/jbosh/BOSHMessageEvent;

    invoke-direct {v0, p0, p1}, Lcom/kenai/jbosh/BOSHMessageEvent;-><init>(Ljava/lang/Object;Lcom/kenai/jbosh/AbstractBody;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/kenai/jbosh/AbstractBody;
    .locals 1

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHMessageEvent;->a:Lcom/kenai/jbosh/AbstractBody;

    return-object v0
.end method
