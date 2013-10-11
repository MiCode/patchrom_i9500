.class public final enum Lcom/kikin/analytics/AnalyticsTrackerEvent;
.super Ljava/lang/Enum;
.source "AnalyticsTrackerEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kikin/analytics/AnalyticsTrackerEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kikin/analytics/AnalyticsTrackerEvent;

.field public static final enum COPY:Lcom/kikin/analytics/AnalyticsTrackerEvent;

.field public static final enum FIND:Lcom/kikin/analytics/AnalyticsTrackerEvent;

.field public static final enum KIKIN_SEARCH:Lcom/kikin/analytics/AnalyticsTrackerEvent;

.field public static final enum SELECT_ALL:Lcom/kikin/analytics/AnalyticsTrackerEvent;

.field public static final enum SHARE:Lcom/kikin/analytics/AnalyticsTrackerEvent;

.field public static final enum WEBVIEW_PAGE_LOADED:Lcom/kikin/analytics/AnalyticsTrackerEvent;

.field public static final enum WEB_SEARCH:Lcom/kikin/analytics/AnalyticsTrackerEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/kikin/analytics/AnalyticsTrackerEvent;

    const-string v1, "KIKIN_SEARCH"

    invoke-direct {v0, v1, v3}, Lcom/kikin/analytics/AnalyticsTrackerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/analytics/AnalyticsTrackerEvent;->KIKIN_SEARCH:Lcom/kikin/analytics/AnalyticsTrackerEvent;

    new-instance v0, Lcom/kikin/analytics/AnalyticsTrackerEvent;

    const-string v1, "WEBVIEW_PAGE_LOADED"

    invoke-direct {v0, v1, v4}, Lcom/kikin/analytics/AnalyticsTrackerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/analytics/AnalyticsTrackerEvent;->WEBVIEW_PAGE_LOADED:Lcom/kikin/analytics/AnalyticsTrackerEvent;

    new-instance v0, Lcom/kikin/analytics/AnalyticsTrackerEvent;

    const-string v1, "WEB_SEARCH"

    invoke-direct {v0, v1, v5}, Lcom/kikin/analytics/AnalyticsTrackerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/analytics/AnalyticsTrackerEvent;->WEB_SEARCH:Lcom/kikin/analytics/AnalyticsTrackerEvent;

    new-instance v0, Lcom/kikin/analytics/AnalyticsTrackerEvent;

    const-string v1, "FIND"

    invoke-direct {v0, v1, v6}, Lcom/kikin/analytics/AnalyticsTrackerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/analytics/AnalyticsTrackerEvent;->FIND:Lcom/kikin/analytics/AnalyticsTrackerEvent;

    new-instance v0, Lcom/kikin/analytics/AnalyticsTrackerEvent;

    const-string v1, "SELECT_ALL"

    invoke-direct {v0, v1, v7}, Lcom/kikin/analytics/AnalyticsTrackerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/analytics/AnalyticsTrackerEvent;->SELECT_ALL:Lcom/kikin/analytics/AnalyticsTrackerEvent;

    new-instance v0, Lcom/kikin/analytics/AnalyticsTrackerEvent;

    const-string v1, "SHARE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/kikin/analytics/AnalyticsTrackerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/analytics/AnalyticsTrackerEvent;->SHARE:Lcom/kikin/analytics/AnalyticsTrackerEvent;

    new-instance v0, Lcom/kikin/analytics/AnalyticsTrackerEvent;

    const-string v1, "COPY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/kikin/analytics/AnalyticsTrackerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/analytics/AnalyticsTrackerEvent;->COPY:Lcom/kikin/analytics/AnalyticsTrackerEvent;

    .line 4
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/kikin/analytics/AnalyticsTrackerEvent;

    sget-object v1, Lcom/kikin/analytics/AnalyticsTrackerEvent;->KIKIN_SEARCH:Lcom/kikin/analytics/AnalyticsTrackerEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kikin/analytics/AnalyticsTrackerEvent;->WEBVIEW_PAGE_LOADED:Lcom/kikin/analytics/AnalyticsTrackerEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kikin/analytics/AnalyticsTrackerEvent;->WEB_SEARCH:Lcom/kikin/analytics/AnalyticsTrackerEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kikin/analytics/AnalyticsTrackerEvent;->FIND:Lcom/kikin/analytics/AnalyticsTrackerEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kikin/analytics/AnalyticsTrackerEvent;->SELECT_ALL:Lcom/kikin/analytics/AnalyticsTrackerEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/kikin/analytics/AnalyticsTrackerEvent;->SHARE:Lcom/kikin/analytics/AnalyticsTrackerEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kikin/analytics/AnalyticsTrackerEvent;->COPY:Lcom/kikin/analytics/AnalyticsTrackerEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kikin/analytics/AnalyticsTrackerEvent;->$VALUES:[Lcom/kikin/analytics/AnalyticsTrackerEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kikin/analytics/AnalyticsTrackerEvent;
    .locals 1
    .parameter "name"

    .prologue
    .line 4
    const-class v0, Lcom/kikin/analytics/AnalyticsTrackerEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kikin/analytics/AnalyticsTrackerEvent;

    return-object v0
.end method

.method public static values()[Lcom/kikin/analytics/AnalyticsTrackerEvent;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/kikin/analytics/AnalyticsTrackerEvent;->$VALUES:[Lcom/kikin/analytics/AnalyticsTrackerEvent;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kikin/analytics/AnalyticsTrackerEvent;

    return-object v0
.end method
