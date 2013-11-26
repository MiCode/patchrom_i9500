.class public final enum Lcom/sec/chaton/clientapi/ChatONMessage$contentType;
.super Ljava/lang/Enum;
.source "ChatONMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/chaton/clientapi/ChatONMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "contentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/chaton/clientapi/ChatONMessage$contentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

.field public static final enum app:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

.field public static final enum app_multimedia:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

.field public static final enum app_url:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

.field public static final enum multimedia:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

.field public static final enum multimedia_text:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

.field public static final enum text:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

.field public static final enum text_url:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

.field public static final enum unknown:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

.field public static final enum url:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 38
    new-instance v0, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    const-string v1, "unknown"

    const-string v2, "unknown"

    invoke-direct {v0, v1, v4, v2}, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;->unknown:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    .line 39
    new-instance v0, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    const-string v1, "text"

    const-string v2, "text"

    invoke-direct {v0, v1, v5, v2}, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;->text:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    .line 40
    new-instance v0, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    const-string v1, "multimedia"

    const-string v2, "multimedia"

    invoke-direct {v0, v1, v6, v2}, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;->multimedia:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    .line 41
    new-instance v0, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    const-string v1, "url"

    const-string v2, "url"

    invoke-direct {v0, v1, v7, v2}, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;->url:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    .line 42
    new-instance v0, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    const-string v1, "multimedia_text"

    const-string v2, "multimedia_text"

    invoke-direct {v0, v1, v8, v2}, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;->multimedia_text:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    .line 43
    new-instance v0, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    const-string v1, "text_url"

    const/4 v2, 0x5

    const-string v3, "text_url"

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;->text_url:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    .line 44
    new-instance v0, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    const-string v1, "app"

    const/4 v2, 0x6

    const-string v3, "app"

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;->app:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    .line 45
    new-instance v0, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    const-string v1, "app_multimedia"

    const/4 v2, 0x7

    const-string v3, "app_multimedia"

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;->app_multimedia:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    .line 46
    new-instance v0, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    const-string v1, "app_url"

    const/16 v2, 0x8

    const-string v3, "app_url"

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;->app_url:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    .line 37
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    sget-object v1, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;->unknown:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;->text:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;->multimedia:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;->url:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;->multimedia_text:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;->text_url:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;->app:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;->app_multimedia:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;->app_url:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;->$VALUES:[Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput-object p3, p0, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;->value:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$contentType;
    .locals 1
    .parameter "name"

    .prologue
    .line 37
    const-class v0, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    return-object v0
.end method

.method public static values()[Lcom/sec/chaton/clientapi/ChatONMessage$contentType;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;->$VALUES:[Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;->value:Ljava/lang/String;

    return-object v0
.end method
