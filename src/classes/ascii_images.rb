module Images
  def self.title
    puts '        ██╗  ██╗ █████╗ ███╗   ██╗ ██████╗ ███╗   ███╗ █████╗ ███╗   ██╗'.colorize(:light_green)
    puts '        ██║  ██║██╔══██╗████╗  ██║██╔════╝ ████╗ ████║██╔══██╗████╗  ██║'.colorize(:light_red)
    puts '        ███████║███████║██╔██╗ ██║██║  ███╗██╔████╔██║███████║██╔██╗ ██║'.colorize(:cyan)
    puts '        ██╔══██║██╔══██║██║╚██╗██║██║   ██║██║╚██╔╝██║██╔══██║██║╚██╗██║'.colorize(:light_magenta)
    puts '        ██║  ██║██║  ██║██║ ╚████║╚██████╔╝██║ ╚═╝ ██║██║  ██║██║ ╚████║'.colorize(:light_blue)
    puts '        ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝'.colorize(:light_yellow)
  end

  def self.small_cat
    "\n    |\\      _,,,---,,_
    /,`.-'`'    -.  ;-;;,_
   |,4-  ) )-,_..;\\ (  `'-'
  '---''(_/--'  `-' \_)"
  end

  def self.menu_cat
    "  _
  \\`*-.
   )  _`-.
  .  : `. .
  : _   '  \\
  ; *` _.   `*-._
  `-.-'          `-.
    ;       `       `.
    :.       .        \\
    . \\  .   :   .-'   .
    '  `+.;  ;  '      :
    :  '  |    ;       ;-.
      ; '   : :`-:     _.`* ;
   .*' /  .*' ; .*`- +'  `*'
  `*-*   `*-*  `*-*'\n"
  end

  def self.game_won_cat
    '                 .............                .""".             .""".
         ..."""""             """""...       $   . ".         ." .   $
     ..""        .   .   .   .   .    ..    $   $$$. ". ... ." .$$$   $
   ."    . " . " . " . " . " . " . " .  "" ."  $$$"""  "   "  """$$$  ".
 ."      . " . " . " . " . " . " . " .     $  "                    "   $
 ."   . " . " . "           "   " . " . "  ."      ...          ...     ".
 ."    . " . "    .."""""""""...     " . "  $     .$"              "$.    $
 ."     . " . " .""     .   .    ""..   . " $ ".      .""$     .""$      ." $
 ."    " . " .       . " . " . " .    $    " $ "      "  $$    "  $$       " $
 $     " . " . " . " . " . " . " . "   $     $             $$.$$             $
 $     " . " . " . " . " . " . " . " .  $  " $  " .        $$$$$        . "  $
 $     " . " . " . " . " . " . " . " .  $    $      "  ..   "$"   ..  "      $
 ".    " . " . " . " . " . " . " . "   ."  "  $  . . . $  . .". .  $ . . .  $
 $    " . " . " . " . " . " . " . "  ."   "            ".."   ".."
 $     . " . " . " . " . " . "   .."   . " . "..    "             "    .."
 ".      " . " . " . " . " .  .""    " . " .    """$...         ...$"""
 ". "..     " . " . " . " .  "........  "    .....  ."""....."""
  ". ."$".....                       $..."$"$"."   $".$"... `":....
    "".."    $"$"$"$"""$........$"$"$"  ."."."  ...""      ."".    `"".
        """.$.$." ."  ."."."    ."."." $.$.$"""".......  ". ". $ ". ". $
               """.$.$.$.$.....$.$.""""               ""..$..$."..$..$."'
  end

  def self.game_lost_cat
    "\n         '.-----/`.
         /       '/
         __'`__ .''-.
         \\o) o/      \\
         (`Y   .)     \\
           `--|__7     \\
             /         |
        __  /         /
        \\ )  \\        //
        \\ \\--X   Y  //
       (-`.`--_.-' /_)
           `-.__.-'\n"
  end
end
