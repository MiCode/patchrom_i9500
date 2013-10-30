.class public final enum Lcom/nuance/swype/connect/api/SettingsValues$MenuDisplayState;
.super Ljava/lang/Enum;
.source "SettingsValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/api/SettingsValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MenuDisplayState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/connect/api/SettingsValues$MenuDisplayState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/connect/api/SettingsValues$MenuDisplayState;

.field public static final enum ACTIVE:Lcom/nuance/swype/connect/api/SettingsValues$MenuDisplayState;

.field public static final enum HIDDEN:Lcom/nuance/swype/connect/api/SettingsValues$MenuDisplayState;

.field public static final enum INACTIVE:Lcom/nuance/swype/connect/api/SettingsValues$MenuDisplayState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/nuance/swype/connect/api/SettingsValues$MenuDisplayState;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/connect/api/SettingsValues$MenuDisplayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/connect/api/SettingsValues$MenuDisplayState;->ACTIVE:Lcom/nuance/swype/connect/api/SettingsValues$MenuDisplayState;

    .line 7
    new-instance v0, Lcom/nuance/swype/connect/api/SettingsValues$MenuDisplayState;

    const-string v1, "INACTIVE"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swype/connect/api/SettingsValues$MenuDisplayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/connect/api/SettingsValues$MenuDisplayState;->INACTIVE:Lcom/nuance/swype/connect/api/SettingsValues$MenuDisplayState;

    .line 8
    new-instance v0, Lcom/nuance/swype/connect/api/SettingsValues$MenuDisplayState;

    const-string v1, "HIDDEN"

    invoke-direct {v0, v1, v4}, Lcom/nuance/swype/connect/api/SettingsValues$MenuDisplayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/connect/api/SettingsValues$MenuDisplayState;->HIDDEN:Lcom/nuance/swype/connect/api/SettingsValues$MenuDisplayState;

    .line 5
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/swype/connect/api/SettingsValues$MenuDisplayState;

    sget-object v1, Lcom/nuance/swype/connect/api/SettingsValues$MenuDisplayState;->ACTIVE:Lcom/nuance/swype/connect/api/SettingsValues$MenuDisplayState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/swype/connect/api/SettingsValues$MenuDisplayState;->INACTIVE:Lcom/nuance/swype/connect/api/SettingsValues$MenuDisplayState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/connect/api/SettingsValues$MenuDisplayState;->HIDDEN:Lcom/nuance/swype/connect/api/SettingsValues$MenuDisplayState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nuance/swype/connect/api/SettingsValues$MenuDisplayState;->$VALUES:[Lcom/nuance/swype/connect/api/SettingsValues$MenuDisplayState;

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
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/connect/api/SettingsValues$MenuDisplayState;
    .locals 1
    .parameter "name"

    .prologue
    .line 5
    const-class v0, Lcom/nuance/swype/connect/api/SettingsValues$MenuDisplayState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/api/SettingsValues$MenuDisplayState;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/connect/api/SettingsValues$MenuDisplayState;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/nuance/swype/connect/api/SettingsValues$MenuDisplayState;->$VALUES:[Lcom/nuance/swype/connect/api/SettingsValues$MenuDisplayState;

    invoke-virtual {v0}, [Lcom/nuance/swype/connect/api/SettingsValues$MenuDisplayState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/connect/api/SettingsValues$MenuDisplayState;

    return-object v0
.end method
