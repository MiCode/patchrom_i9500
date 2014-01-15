.class Lcom/android/settings_ex/wifi/WifiSettings$23;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiSettings;->getErrorAnimationView(II)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiSettings;)V
    .locals 0

    .prologue
    .line 1962
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings$23;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1964
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$23;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mErrorDialogAni:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->access$1600(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1965
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$23;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mErrorDialogAni:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->access$1600(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1966
    :cond_0
    return-void
.end method
