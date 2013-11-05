.class public Lorg/jivesoftware/smack/XMBinder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/XMBinder$Bind;,
        Lorg/jivesoftware/smack/XMBinder$BindResult;,
        Lorg/jivesoftware/smack/XMBinder$BindResult$Type;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/service/p$b;Ljava/lang/String;Lorg/jivesoftware/smack/Connection;)V
    .locals 3

    new-instance v0, Lorg/jivesoftware/smack/XMBinder$Bind;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/jivesoftware/smack/XMBinder$Bind;-><init>(Lorg/jivesoftware/smack/XMBinder;Lcom/xiaomi/push/service/p$b;Ljava/lang/String;Lorg/jivesoftware/smack/Connection;)V

    invoke-virtual {p3, v0}, Lorg/jivesoftware/smack/Connection;->a(Lorg/jivesoftware/smack/packet/Packet;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMACK: bind id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMBinder$Bind;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    return-void
.end method
