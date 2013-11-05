.class public Lde/measite/smack/AndroidDebugger;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jivesoftware/smack/debugger/SmackDebugger;


# static fields
.field public static a:Z


# instance fields
.field private b:Ljava/text/SimpleDateFormat;

.field private c:Lorg/jivesoftware/smack/Connection;

.field private d:Lorg/jivesoftware/smack/PacketListener;

.field private e:Lorg/jivesoftware/smack/ConnectionListener;

.field private f:Ljava/io/Writer;

.field private g:Ljava/io/Reader;

.field private h:Lorg/jivesoftware/smack/util/ReaderListener;

.field private i:Lorg/jivesoftware/smack/util/WriterListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lde/measite/smack/AndroidDebugger;->a:Z

    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/Connection;Ljava/io/Writer;Ljava/io/Reader;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm:ss aaa"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lde/measite/smack/AndroidDebugger;->b:Ljava/text/SimpleDateFormat;

    iput-object v2, p0, Lde/measite/smack/AndroidDebugger;->c:Lorg/jivesoftware/smack/Connection;

    iput-object v2, p0, Lde/measite/smack/AndroidDebugger;->d:Lorg/jivesoftware/smack/PacketListener;

    iput-object v2, p0, Lde/measite/smack/AndroidDebugger;->e:Lorg/jivesoftware/smack/ConnectionListener;

    iput-object p1, p0, Lde/measite/smack/AndroidDebugger;->c:Lorg/jivesoftware/smack/Connection;

    iput-object p2, p0, Lde/measite/smack/AndroidDebugger;->f:Ljava/io/Writer;

    iput-object p3, p0, Lde/measite/smack/AndroidDebugger;->g:Ljava/io/Reader;

    invoke-direct {p0}, Lde/measite/smack/AndroidDebugger;->e()V

    return-void
.end method

.method static synthetic a(Lde/measite/smack/AndroidDebugger;)Ljava/text/SimpleDateFormat;
    .locals 1

    iget-object v0, p0, Lde/measite/smack/AndroidDebugger;->b:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic b(Lde/measite/smack/AndroidDebugger;)Lorg/jivesoftware/smack/Connection;
    .locals 1

    iget-object v0, p0, Lde/measite/smack/AndroidDebugger;->c:Lorg/jivesoftware/smack/Connection;

    return-object v0
.end method

.method private e()V
    .locals 3

    new-instance v0, Lorg/jivesoftware/smack/util/ObservableReader;

    iget-object v1, p0, Lde/measite/smack/AndroidDebugger;->g:Ljava/io/Reader;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/util/ObservableReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Lde/measite/smack/a;

    invoke-direct {v1, p0}, Lde/measite/smack/a;-><init>(Lde/measite/smack/AndroidDebugger;)V

    iput-object v1, p0, Lde/measite/smack/AndroidDebugger;->h:Lorg/jivesoftware/smack/util/ReaderListener;

    iget-object v1, p0, Lde/measite/smack/AndroidDebugger;->h:Lorg/jivesoftware/smack/util/ReaderListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/ObservableReader;->a(Lorg/jivesoftware/smack/util/ReaderListener;)V

    new-instance v1, Lorg/jivesoftware/smack/util/ObservableWriter;

    iget-object v2, p0, Lde/measite/smack/AndroidDebugger;->f:Ljava/io/Writer;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/util/ObservableWriter;-><init>(Ljava/io/Writer;)V

    new-instance v2, Lde/measite/smack/b;

    invoke-direct {v2, p0}, Lde/measite/smack/b;-><init>(Lde/measite/smack/AndroidDebugger;)V

    iput-object v2, p0, Lde/measite/smack/AndroidDebugger;->i:Lorg/jivesoftware/smack/util/WriterListener;

    iget-object v2, p0, Lde/measite/smack/AndroidDebugger;->i:Lorg/jivesoftware/smack/util/WriterListener;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/util/ObservableWriter;->a(Lorg/jivesoftware/smack/util/WriterListener;)V

    iput-object v0, p0, Lde/measite/smack/AndroidDebugger;->g:Ljava/io/Reader;

    iput-object v1, p0, Lde/measite/smack/AndroidDebugger;->f:Ljava/io/Writer;

    new-instance v0, Lde/measite/smack/c;

    invoke-direct {v0, p0}, Lde/measite/smack/c;-><init>(Lde/measite/smack/AndroidDebugger;)V

    iput-object v0, p0, Lde/measite/smack/AndroidDebugger;->d:Lorg/jivesoftware/smack/PacketListener;

    new-instance v0, Lde/measite/smack/d;

    invoke-direct {v0, p0}, Lde/measite/smack/d;-><init>(Lde/measite/smack/AndroidDebugger;)V

    iput-object v0, p0, Lde/measite/smack/AndroidDebugger;->e:Lorg/jivesoftware/smack/ConnectionListener;

    return-void
.end method


# virtual methods
.method public a()Ljava/io/Reader;
    .locals 1

    iget-object v0, p0, Lde/measite/smack/AndroidDebugger;->g:Ljava/io/Reader;

    return-object v0
.end method

.method public a(Ljava/io/Reader;)Ljava/io/Reader;
    .locals 2

    iget-object v0, p0, Lde/measite/smack/AndroidDebugger;->g:Ljava/io/Reader;

    check-cast v0, Lorg/jivesoftware/smack/util/ObservableReader;

    iget-object v1, p0, Lde/measite/smack/AndroidDebugger;->h:Lorg/jivesoftware/smack/util/ReaderListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/ObservableReader;->b(Lorg/jivesoftware/smack/util/ReaderListener;)V

    new-instance v0, Lorg/jivesoftware/smack/util/ObservableReader;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smack/util/ObservableReader;-><init>(Ljava/io/Reader;)V

    iget-object v1, p0, Lde/measite/smack/AndroidDebugger;->h:Lorg/jivesoftware/smack/util/ReaderListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/ObservableReader;->a(Lorg/jivesoftware/smack/util/ReaderListener;)V

    iput-object v0, p0, Lde/measite/smack/AndroidDebugger;->g:Ljava/io/Reader;

    iget-object v0, p0, Lde/measite/smack/AndroidDebugger;->g:Ljava/io/Reader;

    return-object v0
.end method

.method public a(Ljava/io/Writer;)Ljava/io/Writer;
    .locals 2

    iget-object v0, p0, Lde/measite/smack/AndroidDebugger;->f:Ljava/io/Writer;

    check-cast v0, Lorg/jivesoftware/smack/util/ObservableWriter;

    iget-object v1, p0, Lde/measite/smack/AndroidDebugger;->i:Lorg/jivesoftware/smack/util/WriterListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/ObservableWriter;->b(Lorg/jivesoftware/smack/util/WriterListener;)V

    new-instance v0, Lorg/jivesoftware/smack/util/ObservableWriter;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smack/util/ObservableWriter;-><init>(Ljava/io/Writer;)V

    iget-object v1, p0, Lde/measite/smack/AndroidDebugger;->i:Lorg/jivesoftware/smack/util/WriterListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/ObservableWriter;->a(Lorg/jivesoftware/smack/util/WriterListener;)V

    iput-object v0, p0, Lde/measite/smack/AndroidDebugger;->f:Ljava/io/Writer;

    iget-object v0, p0, Lde/measite/smack/AndroidDebugger;->f:Ljava/io/Writer;

    return-object v0
.end method

.method public b()Ljava/io/Writer;
    .locals 1

    iget-object v0, p0, Lde/measite/smack/AndroidDebugger;->f:Ljava/io/Writer;

    return-object v0
.end method

.method public c()Lorg/jivesoftware/smack/PacketListener;
    .locals 1

    iget-object v0, p0, Lde/measite/smack/AndroidDebugger;->d:Lorg/jivesoftware/smack/PacketListener;

    return-object v0
.end method

.method public d()Lorg/jivesoftware/smack/PacketListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
