.class public final enum Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;
.super Ljava/lang/Enum;
.source "ConnectProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/configuration/ConnectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfigurationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

.field public static final enum CONFIG:Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

.field public static final enum DEFAULT:Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

.field public static final enum SERVER:Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;->DEFAULT:Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    new-instance v0, Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    const-string v1, "CONFIG"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;->CONFIG:Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    new-instance v0, Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    const-string v1, "SERVER"

    invoke-direct {v0, v1, v4}, Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;->SERVER:Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    sget-object v1, Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;->DEFAULT:Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;->CONFIG:Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;->SERVER:Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;->$VALUES:[Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;
    .locals 1
    .parameter "name"

    .prologue
    .line 23
    const-class v0, Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;->$VALUES:[Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    invoke-virtual {v0}, [Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    return-object v0
.end method
