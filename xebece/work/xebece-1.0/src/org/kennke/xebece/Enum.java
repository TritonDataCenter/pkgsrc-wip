/**
 *  Copyright 2005 Roman Kennke
 *
 *  This file is part of Xebeche.
 *
 *  Xebeche is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  Xebeche is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with Xebeche; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

package org.kennke.xebece;

import java.io.Serializable;

import java.util.HashMap;


/**
 * An implementation of the enum pattern.
 *
 * @author Roman Kennke
 */
public abstract class Enum
    implements Comparable, Serializable, Cloneable, WithID {

    public final static HashMap s_hmIDtoEnum = new HashMap();

    protected final int m_nID;

    protected Enum(final int _nID) {
        m_nID = _nID;
        String sIDandClassName = getIDandClassName();
        Object oEnumOld = s_hmIDtoEnum.put(sIDandClassName, this);
        if (null != oEnumOld) {
            s_hmIDtoEnum.put(sIDandClassName, oEnumOld);
            throw new IllegalArgumentException("ID " + _nID
                                               + "already exists for class "
                                               + this.getClass().getName());
        }
    }

    public final int getID() {
        return m_nID;
    }

    public final boolean equalIDs(final WithID _id) {
        return m_nID == _id.getID();
    }

    public final int compareTo(final Object _o) {
        return m_nID - ((WithID) _o).getID();
    }

    public String toString() {
        return Integer.toString(m_nID);
    }

    public final boolean equals(final Object _o) {
        return this == _o;
    }

    public final Object clone() {
        return this;
    }

    protected final Object readResolve() {
        return s_hmIDtoEnum.get(getIDandClassName());
    }

    protected String getIDandClassName() {
        return m_nID + this.getClass().getName();
    }

    public static Enum getEnum(final Class _class, final int _nID) {
        return (Enum) s_hmIDtoEnum.get(_nID + _class.getName());
    }
}
