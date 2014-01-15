.class Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$DataObserver;
.super Landroid/database/ContentObserver;
.source "ConnectivityLocationWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;)V
    .locals 1

    .prologue
    .line 1191
    iput-object p1, p0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$DataObserver;->this$0:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;

    .line 1192
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1193
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 1196
    invoke-static {}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->access$800()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1197
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 1198
    invoke-static {}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->access$800()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 1200
    :cond_0
    return-void
.end method
