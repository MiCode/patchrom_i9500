.class public Lorg/jivesoftware/smack/packet/XMPPError$Condition;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/packet/XMPPError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Condition"
.end annotation


# static fields
.field public static final a:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final b:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final c:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final d:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final e:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final f:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final g:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final h:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final i:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final j:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final k:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final l:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final m:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final n:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final o:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final p:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final q:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final r:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final s:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final t:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final u:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final v:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final w:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

.field public static final x:Lorg/jivesoftware/smack/packet/XMPPError$Condition;


# instance fields
.field private y:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    const-string v1, "internal-server-error"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->a:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    const-string v1, "forbidden"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->b:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    const-string v1, "bad-request"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->c:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    const-string v1, "conflict"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->d:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    const-string v1, "feature-not-implemented"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->e:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    const-string v1, "gone"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->f:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    const-string v1, "item-not-found"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->g:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    const-string v1, "jid-malformed"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->h:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    const-string v1, "not-acceptable"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->i:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    const-string v1, "not-allowed"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->j:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    const-string v1, "not-authorized"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->k:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    const-string v1, "payment-required"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->l:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    const-string v1, "recipient-unavailable"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->m:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    const-string v1, "redirect"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->n:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    const-string v1, "registration-required"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->o:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    const-string v1, "remote-server-error"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->p:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    const-string v1, "remote-server-not-found"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->q:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    const-string v1, "remote-server-timeout"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->r:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    const-string v1, "resource-constraint"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->s:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    const-string v1, "service-unavailable"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->t:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    const-string v1, "subscription-required"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->u:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    const-string v1, "undefined-condition"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->v:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    const-string v1, "unexpected-request"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->w:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    const-string v1, "request-timeout"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->x:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->y:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lorg/jivesoftware/smack/packet/XMPPError$Condition;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->y:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->y:Ljava/lang/String;

    return-object v0
.end method
