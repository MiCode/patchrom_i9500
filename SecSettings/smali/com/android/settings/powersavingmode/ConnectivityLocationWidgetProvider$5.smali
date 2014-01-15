.class Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$5;
.super Ljava/lang/Object;
.source "ConnectivityLocationWidgetProvider.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->simInsertAlert(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;)V
    .locals 0

    .prologue
    .line 1179
    iput-object p1, p0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$5;->this$0:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 1181
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1182
    return-void
.end method
