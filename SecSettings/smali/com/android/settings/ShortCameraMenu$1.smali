.class Lcom/android/settings_ex/ShortCameraMenu$1;
.super Ljava/lang/Object;
.source "ShortCameraMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ShortCameraMenu;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ShortCameraMenu;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ShortCameraMenu;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings_ex/ShortCameraMenu$1;->this$0:Lcom/android/settings_ex/ShortCameraMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/ShortCameraMenu$1;->this$0:Lcom/android/settings_ex/ShortCameraMenu;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "kg_enable_camera_widget_type"

    iget-object v2, p0, Lcom/android/settings_ex/ShortCameraMenu$1;->this$0:Lcom/android/settings_ex/ShortCameraMenu;

    #getter for: Lcom/android/settings_ex/ShortCameraMenu;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/settings_ex/ShortCameraMenu;->access$000(Lcom/android/settings_ex/ShortCameraMenu;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/ShortCameraMenu$1;->this$0:Lcom/android/settings_ex/ShortCameraMenu;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 70
    return-void
.end method
